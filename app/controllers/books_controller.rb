class BooksController < ApplicationController
  def index
    @new = Book.new
    @index = Book.all
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to books_path
  end

  def new
    @new = Book.new
  end

  def create
   @new = Book.new(book_params)
    if @new.save
     redirect_to books_show_path(@new.id), notice:'Book was succesfully created.'
    else
      @index= Book.all
      render :index
    end
  end

  def show
     @show = Book.find(params[:id])
  end

  def edit
    @edit = Book.find(params[:id])
  end

  def update
    @edit = Book.find(params[:id])
    if @edit.update(book_params)
     redirect_to books_show_path(@edit.id),notice: 'Book was succesfully updated.'
    else
      render :edit
    end
  end

private

  def book_params
    params.require(:book).permit(:title, :body)
  end

end
