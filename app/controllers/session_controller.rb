class SessionController < ApplicationController

    # signup branch
    def create 
        @user = User.find_by(username: params[:username])

        if @user&.authenticate(params[:password])

            session[:user_id] = @user.id
            render json: @user
        else
            render json: {error: "username or password invalid"}, status: :unprocessable_entity
        end
    end

    def destroy
        if session[:user_id]
            reset_session
            head :no_content
        else
            render json: {errors: "not working"}
        end
    end

            


end
