class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def send_mailer(user)
  	@user = user
  	mail(to: @user.email, subject: "You are the man now, dawg.")
  end
end
