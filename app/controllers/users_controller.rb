class UsersController < ApplicationController
    def index
        @user = User.all
    end

    def create
        @user = User.create!(user_params)
        if @user.save
            session[:user_id] = @user.id
            render json: @user
            # redirect_to root_path
        else
            render :index
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
