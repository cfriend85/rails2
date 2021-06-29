class SessionsController < ApplicationController
    skip_before_action :require_login

    def index
    end

    def new
    user = User.create(user_params)
    if user.errors
        flash[:errors] = user.errors.full_messages
        redirect_to '/'
    else
        session[:user_id] = user.id
        redirect_to "/books"
        end
    end

    def show
        @user = User.find_by_email(user_params[:email]).try(:authenticate, user_params[:password])
        if @user
            session[:user_id] = @user.id 
            redirect_to "/books"
        else
            flash[:login] = ["Email does not exist or password is invalid. Please register or try again."]
            redirect_to :back
        end
    end

    def destroy
        reset_session
        redirect_to '/'
    end


    private
    def user_params
        params.require(:user).permit(:name,:alias,:email,:password,:password_confirmation)
    end
end
