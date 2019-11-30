class UserMailer < ApplicationMailer
    default from: 'notifications@rocketelevators.com'

    def welcome_email
        @user = params[:user]
        @url  = 'http://rocketelevatorscanada.com/users/sign_in'
        mail(to: @user.email, subject: 'Welcome to Rocket Elevators')
      end
end
