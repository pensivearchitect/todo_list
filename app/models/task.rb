class Task < ApplicationRecord
  has_many :dependencies
  has_many :tasks, through: :dependencies
  has_many :dependencies, foreign_key: :dependent_task_id, class_name: 'Dependency'
  has_many :tasks, through: :dependencies, source: :task
end
