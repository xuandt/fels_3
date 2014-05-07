class CategoriesController < ApplicationController
  def show
    @categories = Category.find params[:id]
  end
  def index
    @categories = Category.paginate page: params[:page]
  end
end