class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      #flash[:notice] = "投稿が成功しました"　フラッシュメッセージ記述場所
      redirect_to list_path(@book.id)
    else
      render :new
    end
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    book = Books.find(params[:id])
    book.destroy
    redirect_to '/books'
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end

  private
  def book_params
    params.require(:list).permit(:title, :body)
  end
end
