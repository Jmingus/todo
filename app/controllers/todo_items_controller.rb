class TodoItemsController < ApplicationController
  def index
    @todos = TodoItem.all
    @todo = TodoItem.new
  end

  def new
  end

  def create
    @todo = TodoItem.new(todo_items_params)
    if @todo.save
      respond_to do |format|
        format.xhr {render "Success!" }
        format.html { redirect_to todo_items_path, notice: 'Successfully Created'}
      end

    else
      respond_to do |format|
        format.xhr {render "Error" }
        format.html {redirect_to :back, alert: 'error occured'}
      end
    end
  end

  def show
  end

  def destroy
  end

  private

  def todo_items_params
    params.require(:todo_item).permit(:message, :priority, :due_date)
  end
end
