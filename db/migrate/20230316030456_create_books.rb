class CreateBooks < ActiveRecord::Migration[6.1]
  def index
    @book = Book.new
  end
  def create
    book = Book.new(book_params)
    book.save
    redirect_to '/books/' => 'books#show'
  end
     
  def show
  end
    
  def edit
  end
    
  private
  def list_params
    params.reqire(:list).permit(:title, :body)
  end
end
