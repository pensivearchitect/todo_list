class TaskSerializer < ApplicationSerializer
  set_type :task
  set_id :id
  set_key_transform :dash
  attributes(*Task.attributes)
  cache_options enabled: true, cache_length: 12.hours
  has_many :facets
  has_many :chunks, through: :facets
  # returns the class that we serialized
  def self.serializes
    Task
  end
end
