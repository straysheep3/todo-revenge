class AddTodoListIdToTodoTask < ActiveRecord::Migration
  def change
    add_column :todo_tasks, :todo_list_id, :integer
  end
end
