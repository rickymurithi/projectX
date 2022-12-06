class SessionController < ApplicationController

    # signup branch
    def create 
        @user = User.find_by(username: params[:username])

        if !!@user && @user.authenticate(params[:password])

            session[:user_id] = @user.user_id
            render json: @user
            redirect_to user_path
        else
            message = "something went wrong! Make sure your username and password are correct"
            redirect_to login_path, notice: message
        end
    end
            


end
