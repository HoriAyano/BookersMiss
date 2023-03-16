class BooksController < ApplicationController
  def index
    @list = List.new
  end
  
  def create
    list = List.new(list_params)
    list.save
    redirect_to '/books/' => 'books#show'

  def show
  end

  def edit
  end
  
  private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end