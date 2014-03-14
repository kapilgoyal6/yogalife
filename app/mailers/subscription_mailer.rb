class SubscriptionMailer < ActionMailer::Base
  # default from: "kapil_goyal@seologistics.com"
  default from: "\"Yogalife\" <kapil_goyal@seologistics.com>"

  def send_email(subscriber)
    @subscriber = subscriber
    # @url  = 'http://example.com/login'
    mail(to: @subscriber.email, subject: 'Yogalife News Letter')

	# mail :to => "kapil_goyal@seologistics.com",
 #      :from => "do-not-reply@mydomain.com",
		# :reply_to => "kapil_goyal@seologistics.com",
      # :subject => "Yogalife News Letter" 
  end

end
