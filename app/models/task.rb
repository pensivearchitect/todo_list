class Task < ApplicationRecord
  has_many :dependencies
  has_many :tasks, through: :dependencies
  has_many :dependencies, foreign_key: :dependent_task_id, class_name: 'Dependency', inverse_of: :dependent_task
  has_many :tasks, through: :dependencies, source: :task

  def self.attributes
    %i[title details due_date priority completion_time label created_at]
  end
end
