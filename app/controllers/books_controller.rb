class BooksController < ApplicationController
  def index
    @new = Book.new
    @index = Book.all
  end

  def destroy

  end

  def new
    @new = Book.new
  end

  def create
    new = Book.new(book_params)
    new.save
    redirect_to '/books/:id'
  end

  def show
  end

  def edit
  end

private

  def book_params
    params.require(:book).permit(:title, :body)
  end
end
