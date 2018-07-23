class Dependency < ApplicationRecord
  belongs_to :task, touch: true, counter_cache: true
  belongs_to :dependent_task, counter_cache: :dependencies_count, class_name: 'Task', inverse_of: :dependencies
end
