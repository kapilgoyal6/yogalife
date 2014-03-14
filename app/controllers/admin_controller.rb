class AdminController < ApplicationController
  def dashboard
  end


  def new
  	render :layout => false
  end

  def index
  	# render :dashboard
  	# user = User.authenticate(params[:email], params[:password])
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  if @current_user
    # session[:user_id] = user.id
    render :dashboard
  else
    # flash.now.alert = "Invalid email or password"
    # render "new"
    # redirect_to "/admin/login"
  end
  	
  end



  def admin
  user = User.authenticate(params[:email], params[:password])
  if user
    session[:user_id] = user.id
    # redirect_to "/admin", :notice => "Logged in!"
    render 'admin/dashboard'

  else
    flash.now.alert = "Invalid email or password"
    # render "new"
    redirect_to "/admin/login", :notice => "Invalid email or password"
  end
end





  def show

  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  if @current_user
    # session[:user_id] = user.id
    # render :dashboard
    redirect_to "/admin"
  else
    # flash.now.alert = "Invalid email or password"
    # render "new"
    # redirect_to "/admin/login"
    render :new, :layout => false
  end
  	# render :new, :layout => false
  	# render :layout => false
  end

  # def show
  # 	user = User.authenticate(params[:email], params[:password])
  # if user
  #   session[:user_id] = user.id
  #   redirect_to "/admin", :notice => "Logged in!"
  # else
  #   flash.now.alert = "Invalid email or password"
  #   # render "new"
  #   redirect_to "/admin/login", :notice => "Invalid email or password"
  # end
  	
  # end

end
