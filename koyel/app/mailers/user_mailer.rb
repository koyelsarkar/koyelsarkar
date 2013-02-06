class UserMailer < ActionMailer::Base
  default :from => "notice@koyel.com"

  def welcome_email(user)
    @user = user
    @url = "http://koyel.com/login"
    mail (:to => user.email, :subject => "Welcome to My site")
  end
end
