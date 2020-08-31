class TodosController < ApplicationController
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  def index
    @todos = current_user.todos
  end

  def show
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = current_user.todos.new(todo_params)
    if @todo.save
      redirect_to todos_path
    else
      render :new 
    end
  end

  def edit
  end

  def update
    if @todo.update(account_params)
      redirect_to todos_path
    else
      render :edit
    end
  end

  def destroy
    
    @todo.destroy
    redirect_to accounts_path
  end

  private

  def todo_params
    params.require(:todo).permit(:name, :item)
  end

  def set_todo
    @todo = current_user.todos.find(params[:id])
  end



  
end
