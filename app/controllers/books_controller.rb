class BooksController < ApplicationController

  # GET /books
  def index
    @books = Book.all
  end

  # GET /books/1
  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      render "new"
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      redirect_to @book
    else
      render "edit"
    end
  end

  # DELETE /books/1
  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to books_path
  end

  def favorite
    book_to_fave = Book.find(params[:id])
    if current_user
      current_user.books << book_to_fave
    end
    redirect_to current_user
  end

  private
  def book_params
    params.require(:book).permit(:title, :publication_date, :author_id)
  end

end
