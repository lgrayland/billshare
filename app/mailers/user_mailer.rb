class UserMailer < ActionMailer::Base
  default from: "from@billshare.com"

  def registration_confirmation(user)
    mail(to: user.email, subject: "Registered")
  end
end
