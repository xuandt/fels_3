class Admin::CategoriesController < ApplicationController
  def show
    @category = Category.find params[:id]
  end
  def index
    @categories = Category.paginate page: params[:page]
  end
  def new
    @category = Category.new
  end
  def create
    @category = Category.new category_params
    if @category.save
      flash[:success] = "Create Successful!"
      redirect_to @category
    else
      flash[:faild] = "fail"
      render 'new'
    end
  end
  def edit
    @category = Category.find params[:id]
  end
  def update
    @categories = Category.find params[:id]
    if @categories.update_attributes category_params
      flash[:success] = "Successful! Category updated."
      redirect_to @categories
    else
      flash[:faild] = "Edit faild"
      render 'edit'
    end
  end
  def destroy
    category= Category.find params[:id]
    category.destroy
    flash[:success] = "Category deleted."
    redirect_to categories_url
  end
  private
    def category_params
      params.require(:category).permit(:name, :description)
    end
end