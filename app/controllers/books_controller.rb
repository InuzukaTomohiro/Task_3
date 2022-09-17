class BooksController < ApplicationController

    def show
    end

    def index
      @book = Book.new
      @books = Book.all

    end

    def edit
    end

    def create
        @book = Book.new(book_params)
        @book.user_id =current_user.id
        @book.save
        redirect_to books_path

    end

    private

    def book_params
        params.require(:book).permit(:title, :body, :user_id)
    end

end
