class Task < ApplicationRecord
  has_many :facets
  has_many :chunks, through: :facets

  def self.attributes
    %i[due_date priority completion_time created_at]
  end
end
