class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :details, :due_date, :priority, :completion_time, :label

  has_many :tasks
end
