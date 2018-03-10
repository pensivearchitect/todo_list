class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :priority, :details, :due_date, :priority, :completion_time, :label

  has_many :tasks
end
