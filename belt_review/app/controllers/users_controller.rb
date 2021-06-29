class UsersController < ApplicationController
    def index 
    @user = User.find(params[:id])
    end

    def edit
    @user = User.find(params[:id])
    end

    def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
        redirect_to "/users/#{@user.id}"
    else @user.errors
        flash[:errors] = @user.errors.full_messages
        redirect_to :back
    end
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :city, :state, :password, :password_confirmation)
    end
end
