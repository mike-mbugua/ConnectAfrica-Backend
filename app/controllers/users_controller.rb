class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create] 
    def create
        user=User.create(user_params)
        if user.valid?
            token=encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user),jwt:token},status: :created
        else
            render json: {error: 'failed to create user'}, status: :unprocessable_entity
        end
    end

    def index
        user=User.all
        render json: user,status: :ok
    end

    def show
        user=User.find_by(params[:id])
        render json: user, status: :found
    end

    def update
        user=User.find_by(params[:id])
        user.update(user_params)
        render json: user,status: :ok
    end

    def destroy
        user=User.find_by(params[:id])
        user.destroy()
    end

    private

    def user_params
        params.permit(:name,:email,:password)
    end
end

