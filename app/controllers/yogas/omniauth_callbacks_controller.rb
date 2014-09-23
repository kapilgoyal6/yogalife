class Yogas::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model (e.g. app/models/user.rb)
    @user = Yoga.find_for_facebook_oauth(request.env["omniauth.auth"], current_yoga)
 
    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication #this will throw if @user is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_yoga_registration_url
    end
  end

  def twitter
    auth = env["omniauth.auth"]
    @user = Yoga.find_for_twitter_oauth(request.env["omniauth.auth"],current_yoga)
    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success"
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.twitter_uid"] = request.env["omniauth.auth"]
      redirect_to new_yoga_registration_url
    end
  end
  def linkedin
    auth = env["omniauth.auth"]
    @user = Yoga.connect_to_linkedin(request.env["omniauth.auth"],current_yoga)
    if @user.persisted?
      flash[:notice] = I18n.t "devise.omniauth_callbacks.success"
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.linkedin_uid"] = request.env["omniauth.auth"]
      redirect_to new_yoga_registration_url
    end
  end
end