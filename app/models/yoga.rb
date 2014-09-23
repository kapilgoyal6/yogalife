class Yoga < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :omniauthable

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = Yoga.where(:provider => auth.provider, :uid => auth.uid).first
    if user
      return user
    else
      registered_user = Yoga.where(:email => auth.info.email).first
      if registered_user
        return registered_yoga
      else
        user = Yoga.create(provider:auth.provider,
                            uid:auth.uid,
                            email:auth.info.email,
                            password:Devise.friendly_token[0,20]
                          )
      end
       
    end
  end

  def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
 
    user = Yoga.where(:provider => auth.provider, :uid => auth.uid).first
    if user
      return user
    else
      registered_user = Yoga.where(:email => auth.uid + "@twitter.com").first
      if registered_user
        return registered_user
      else
        user = Yoga.create(provider:auth.provider,
          uid:auth.uid,
          email:auth.uid+"@twitter.com",
          password:Devise.friendly_token[0,20]
        )
      end
    end
  end

  def self.connect_to_linkedin(auth, signed_in_resource=nil)
    user = Yoga.where(:provider => auth.provider, :uid => auth.uid).first
    if user
      return user
    else
      registered_user = Yoga.where(:email => auth.info.email).first
      if registered_user
        return registered_user
      else

        user = Yoga.create(provider:auth.provider,
                            uid:auth.uid,
                            email:auth.info.email,
                            password:Devise.friendly_token[0,20],
                          )
      end

    end
  end
end
