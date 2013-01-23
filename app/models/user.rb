class User < ActiveRecord::Base
  attr_accessible :email, :name

  after_create :send_user_mailer

  def send_user_mailer
  	# UserMailer.send_mailer(self).deliver
  	Delayed::Job.enqueue(MailerJob.new(id), run_at: Time.now + 1.minute )
  end
end
