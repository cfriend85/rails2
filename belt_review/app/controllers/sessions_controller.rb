class SessionsController < ApplicationController
    def register
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id
            redirect_to "/events"
        else @user.errors
            flash[:errors] = @user.errors.full_messages
            redirect_to '/'
        end
    end

    def login 
    @user = User.find_by_email(user_params[:email]).try(:authenticate, user_params[:password])
    if @user.valid?
        session[:user_id] = @user.id
        redirect_to "/events"
    else @user.errors
        flash[:errors] = @user.errors.full_messages
        redirect_to '/'
    end
end

    def logout
        reset_session
        redirect_to '/'
    end
    
    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :city, :state, :password, :password_confirmation)
    end
end
