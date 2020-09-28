class UserMailer < ApplicationMailer
  default from:  'notifications@vonnenaut.github.io'
  
  def welcome_email
    @user = params[:user]
    @url = 'https://dashcom-rails-blog.herokuapp.com/users/sign_in'
    mail(to: @user.email, subject: "Welcome to Dan Ashcom's Rails Blog at vonnenaut.github.io")
  end
end

