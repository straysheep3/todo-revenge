class TodoTasksController < ApplicationController
  before_action :set_todo_list

  def create
    @todo_task = @todo_list.todo_tasks.new(todo_task_params)
    if @todo_task.save
      redirect_to @todo_list
    end
  end

  private
    def todo_task_params
      params.require(:todo_task).permit(:task)
    end

    def set_todo_list
      # todo_list_todo_tasks GET /todo_lists/:todo_list_id/todo_tasks(.:format)
      @todo_list = TodoList.find(params[:todo_list_id])
    end
end
