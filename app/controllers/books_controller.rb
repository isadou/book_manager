class BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit update destroy ]

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create(book_params)
    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private
  def set_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :year, :resume, :price)
  end
end
