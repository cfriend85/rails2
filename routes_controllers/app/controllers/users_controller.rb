class UsersController < ApplicationController
    def index
    end
    def hello
    end
    def sayhi
    end
    def sayhijoe
    end
    def sayhimike
        redirect_to '/say/hello/joe'
    end
    def count
        session[:count] ||=0
        session[:count] += 1
        @counter = session[:count]
    end
    def logout
        session[:count] = 0
        # reset_session
        redirect_to '/times'
    end
    def users
        render json: User.all
    end
    def new
    end
    def total
        @count = User.count
    end
    def displayuser
        user = User.find(params[:id])
        render json: user
    end
    def edituser
        @user = User.find(params[:id])
    end
    def addnewuser
        User.create(user_params)
        redirect_to '/users'
    end
    private
        def user_params
            params.require(:user).permit(:name)
        end
end
