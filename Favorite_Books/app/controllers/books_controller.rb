class BooksController < ApplicationController
    def index 
    @books = Book.all
    end
    
    def create 
    @book = Book.create(title:params[:title], description:params[:description], user_id:current_user.id)
    redirect_to "/books"
    # redirect_to "/favorites/new/#{@book.id}"
    end

    def new 
    @favorite = Favorite.create(user_id:current_user.id, book_id:params[:id])
    redirect_to "/books/#{params[:id]}"
    end

    def show 
    @book = Book.find(params[:id])
    @favorites = Favorite.where(book_id:@book.id)
    end

    def update
    @book = Book.find(params[:id])
    @book.title = params[:title]
    @book.description = params[:description]
    @book.save
    redirect_to "/books"
    end
end
