class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
    
       def self.new_with_session(params, session)
       if session["devise.user_attributes"]
              new(session["devise.user_attributes"], without_protection: true) do |user|
              user.attributes = params
              user.valid?
              end
       else
              super
       end
       end

       def update_with_password(params, *options)
       if password.blank?
              update_attributes(params, *options)
       else
              super
       end
       
       def password_optional?
              true
            end
       end  
       
       has_one :customer
end