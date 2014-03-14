class Subscriber < ActiveRecord::Base

	validates_format_of :email, :with => /\A([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})\z/

	
	validates_uniqueness_of :email

# 	def email_uniqueness
#   self.errors.add(:base, 'User with same email already exists. Please try with another email address.') if Subscriber.where(:email => self.email).exists?
# end

end
