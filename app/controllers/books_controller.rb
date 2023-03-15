class BooksController < ApplicationController
  def index
  end
  
  def create
    list = List.new(list_params)
    list.save
    redirect_to '/books/' => 'books#show'

  def show
  end

  def edit
  end
end