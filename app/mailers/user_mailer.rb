class UserMailer < ApplicationMailer
  default from: 'pgarg@bestpeers.com'
 
  def welcome_email(user)
    @user = user
    @url  = 'https://accounts.google.com/Login'
    mail(to: @user.email,
         subject: 'Welcome to My Awesome Site',
         template_path: 'notifications',
         template_name: 'another')
  end
end