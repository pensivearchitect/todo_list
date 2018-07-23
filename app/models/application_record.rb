class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :id, numericality: true, uniqueness: true

  def self.parameterize
    name.parameterize
  end

  def self.serializer
    const_get("#{name}Serializer")
  end

  def self.serialize(*args)
    serializer.new(*args)
  end
end
