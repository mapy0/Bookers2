#Book 投稿・詳細画面等についてのController
class BooksController < ApplicationController
  
  #投稿画面表示
  def new
  @book = Book.new
  end
  
  #投稿内容保存
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    #投稿に関するバリテーション
    if @book.save
      redirect_to post_images_path
    else
      render :new
    end
    
    
    
  end
  
  #投稿リスト表示画面を作成
  def index
    @books = Book.all
  end
 
  #投稿詳細表示画面を作成
  def show
    @book = Book.find_by(params[:id])
  end
  
  #投稿削除
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
    
  end
  
  # 投稿データのストロングパラメータ
  private

  def book_params
    params.require(:book).permit(:title, :image)
  end


end
