class AuthController < ApplicationController
    def create
        user=User.find_by(email: user_login_params[:name])
        if user &.authenticate(user_login_params)
            
        else
            
        end
    end
end
