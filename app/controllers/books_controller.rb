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
        book = Book.find(params[:current_user])
        book.save(parama_path)
        redirect_to books_path

    end

    private

    def book_params
        params.require(:book).permit(:title, :body)
    end

end
