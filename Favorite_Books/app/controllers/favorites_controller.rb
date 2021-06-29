class FavoritesController < ApplicationController
    def new 
        @favorite = Favorite.create(user_id: current_user.id, book_id:params[:id])
        redirect_to '/books'
    end

    def destroy 
    @favorite = Favorite.find_by(user_id: current_user.id, book_id:params[:id])
    @favorite.destroy
    redirect_to '/books'
    end
end
