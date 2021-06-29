class SessionsController < ApplicationController
    def new 
    user = User.create(user_params)
        if user.errors 
            flash[:errors] = user.errors.full_messages
            redirect_to '/'
        else
            session[:user_id] = user.id 
            redirect_to '/'
        end
    end

    def show 
    @user = User.find_by_email(user_params[:email]).try(:authenticate, user_params[:password])
        if @user
            session[:user_id] = @user.id 
            redirect_to '/'
        else
            flash[:login] = ["Account not found"]
            redirect_to '/'
        end
    end

    def destroy
        reset_session
        redirect_to '/'
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
