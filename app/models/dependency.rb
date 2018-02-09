class Dependency < ApplicationRecord
  belongs_to :task, touch: true, counter_cache: true
  belongs_to :dependent_task, counter_cache: :dependencies_count, class_name: 'Task', inverse_of: :dependencies
  validate :realism

  private def realism
    return if task_id != dependent_task_id
    errors.add :task, 'What kind of person makes a task dependent on itself!?!'
  end
end
