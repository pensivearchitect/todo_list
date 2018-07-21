class TaskSerializer
  include FastJsonapi::ObjectSerializer
  set_type :task
  set_id :id
  attributes *Task.attributes
  cache_options enabled: true, cache_length: 12.hours
  has_many :tasks
end
