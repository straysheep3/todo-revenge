class CreateTodoTasks < ActiveRecord::Migration
  def change
    create_table :todo_tasks do |t|
      t.string :task

      t.timestamps null: false
    end
  end
end
