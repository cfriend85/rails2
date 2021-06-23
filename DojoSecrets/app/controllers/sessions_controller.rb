class SessionsController < ApplicationController
  def new
      # render login page
  end
  def create
    user = User.create(user_params)
    session[:user_id] = user.id
    redirect_to '/users/:id'
    # Log User In
    # if authenticate true
    # save user id to session
    # redirect to users profile page
    # if authenticate false
    # add an error message -> flash[:errors] = ["Invalid"]
    # redirect to login page
end
def login
    @user = User.find_by_email('user[:email]').try(:authenticate, 'user[:confirm]')
    session[:user_id]
    redirect_to "/users/#{session[:user_id]}"
  end
  def destroy
    reset_session
    redirect_to '/'
      # Log User out
      # set session[:user_id] to null
      # redirect to login page
  end

  private
    def user_params
        params.require(:user).permit(:name,:email,:password)
    end
end

