class TodoTask < ActiveRecord::Base
  belongs_to :todo_list

  # trueかfalseを返す
  def completed?
    # completed_atが空なら(false)、入っていれば(true)
    !completed_at.blank?
  end
end
