class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @category = Category.new
  end

  def show
    @category = Category.find(params[:id])
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_todo_permit_params)
      flash[:success] = "Update is Successful!"
      redirect_to category_path(params[:id])
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def new
    @category = Category.new
    3.to_i.times do
      @category.todos.new #accepts_nested_attributes_for
    end
  end

  def create
    @category = Category.new(category_todo_permit_params)
    if @category.save
      flash[:success] = "New Category Registerd!"
      redirect_to categories_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy
    flash[:success] = "Category Deleted."
    redirect_to categories_path, status: :see_other
  end

  private
    def category_todo_permit_params
      params.require(:category).permit(:id, :name, :description, todos_attributes:[:id, :name, :description])
    end



end
