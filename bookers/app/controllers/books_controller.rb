class BooksController < ApplicationController

  def index
    @book = Book.all
    @books = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end
  
  
  def edit
     @book= Book.find(params[:id])
    # @books = Book.new
    # if @book.save
    #   redirect_to @book,notice: 'Book was successfully created'
    # else
    #       @book = Book.all
    #       render :edit
    # end
    
  end
  

  def create
    @books = Book.new(book_params)

    if @books.save
      redirect_to @books, notice: 'Book was successfully created'
    else
      @book = Book.all
      render :index
    end
  end

  def update
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book,notice: 'Book was successfully created'
    else
      # @book = Book.all
      render :edit
    end
  end

  def destroy
    @book = Book.find(params[:id])

    @book.destroy
    redirect_to  books_path,notice: 'Book was successfully destroyed.'
  end

private
  def book_params
   params.require(:book).permit(:title,:body)
  end
end