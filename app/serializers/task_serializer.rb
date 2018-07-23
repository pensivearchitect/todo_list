class TaskSerializer < ApplicationSerializer
  set_type :task
  set_id :id
  attributes *Task.attributes
  cache_options enabled: true, cache_length: 12.hours
  has_many :tasks

  # returns the class that we serialized
  def self.serializes
    Task
  end
end
