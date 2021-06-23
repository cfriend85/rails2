class SessionsController < ApplicationController
  skip_before_action :require_login

  def new
      # render login page
  end
  
  def create
    user = User.create(user_params)
    if user.errors
      flash[:errors] = user.errors.full_messages
      redirect_to :back
    else
    session[:user_id] = user.id
    redirect_to "/users/#{session[:user_id]}"
    end
end

def login
    @user = User.find_by_email(user_params[:email]).try(:authenticate, user_params[:password])
    if @user
    session[:user_id] = @user.id
    redirect_to "/users/#{session[:user_id]}"
    else
      flash[:login] = ['Account not found, please try again or register.']
      redirect_to :back
    end
  end

def destroy
  reset_session
  redirect_to '/'
  end

  private
    def user_params
        params.require(:user).permit(:name,:email,:password,:password_confirmation)
    end
end