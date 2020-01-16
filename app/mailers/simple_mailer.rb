class SimpleMailer < ActionMailer::Base

  def hello_email(email_address, subject)
    mail(to: email_address, subject: subject)
  end
end
