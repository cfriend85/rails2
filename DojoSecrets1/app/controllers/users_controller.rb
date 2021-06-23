class UsersController < ApplicationController
    before_action :require_login
    before_action :require_authorization

    def show
      @user = User.find(params[:id])
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      user = User.find(params[:id])
      user.update(user_params)
      if user.errors
        flash[:errors] = user.errors.full_messages
      else
        user.save
      end
      redirect_to "/users/#{user.id}"
    end

    def destroy
    user = User.find(session[:user_id])
    user.destroy
    redirect_to '/logout'
    end

    private
    def user_params
        params.require(:user).permit(:name,:email,:password,:password_confirmation)
    end

    def require_authorization
      redirect_to "/users/#{current_user.id}" unless current_user.id == params[:id].to_i
    end
    helper_method :require_authorization
  end