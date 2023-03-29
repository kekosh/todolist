class TodosController < ApplicationController
  def new
    @todo = Todo.new
    @category_id = params[:id]
  end

  def create
    @todo = Todo.new(todo_permit_params)
    if @todo.save
      flash[:success] = "new todo Registered!"
      redirect_to categories_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    flash[:success] = "todo is Deleted."
    redirect_to category_path, status: :see_other
  end

  private
    def todo_permit_params
      params.require(:todo).permit(:name, :description, :category_id)
    end

end
