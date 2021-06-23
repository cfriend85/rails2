class LikesController < ApplicationController
    before_action :require_login
    before_action :require_authorization
    def create
        @like = Like.create(user_id:params[:user_id], secret_id:params[:secret_id])
        redirect_to '/secrets'
    end
    
    def destroy
        @like = Like.find_by(user_id: current_user.id, secret_id:params[:id])
        @like.destroy 
        redirect_to '/secrets'
    end

    private
    def require_authorization
        redirect_to "/users/#{current_user.id}" unless current_user.id == params[:id].to_i
      end
      helper_method :require_authorization
end
