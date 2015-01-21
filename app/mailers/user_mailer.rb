class UserMailer < ActionMailer::Base
  default from: "from@billshare.com",
  template_path: 'mailers/users'

  def welcome(user)
    mail(to: user.email, subject: "Registered")
  end
end
