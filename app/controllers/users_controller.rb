class UsersController < ApplicationController
    def user_params
      params.require(:user).permit(:email, :encrypted_password, :password_confirmation, :role)
    end
end
