    class UsersController < ApplicationController
        def index
            @user = User.all
            render json: user
        end
    
        def create
            @user = User.create!(user_params)
            if @user
                session[:user_id] = @user.id
                render json: @user, status: :created
            else
                render json: {error: "invalid username or password"}, status: :unprocessable_entity
            end
        end
        
        def show
            @user = User.find(params[:id])
        end
    
        private
    
        def user_params
            params.permit(:username, :password)
        end
        
    
    end

