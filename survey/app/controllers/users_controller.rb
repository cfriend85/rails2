class UsersController < ApplicationController
    def index
    end
    def addnew
        User.create(user_params)
        redirect_to '/result'
    end
    def results
        flash[:count] ||= 0
        flash[:count] += 1
        @user = User.last
    end
    private
        def user_params
            params.require(:user).permit(:name,:location,:language,:comment)
        end
end
