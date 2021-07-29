class BooksController < ApplicationController
    before_action :set_book, only: %i[show edit update destroy]
    before_action :set_selects, only: %i[new edit create update]
    
    def new
        @book = Book.new
    end

    def create
        @book = Book.create(books_params)
        respond_to do |format|
            if @book.save
                format.html {redirect_to @book, notice: "Tu libro se ha ingresado correctamente!"}
            else
                format.html {render :new}
            end
        end
    end

    def index
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy   
    end
    
    private
    
    def set_book
        @book = Book.find(params[:id])
    end

    def set_selects
        @statuses = Book.statuses.keys.to_a
    end

    def books_params
        params.require(:book).permit(:title, :author, :status, :loan_date, :return_date)
    end
end
