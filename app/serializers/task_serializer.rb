class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :priority

  has_many :tasks
end
