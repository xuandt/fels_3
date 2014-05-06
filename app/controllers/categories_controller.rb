class CategoriesController < ApplicationController
  def new
  end
  def show
  	@categories = Category.find(:all)
  end
  def index
  	@categories = Category.all 
  end
end
