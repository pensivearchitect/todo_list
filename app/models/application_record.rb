class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :id, uniqueness: true

  def self.parameterize
    name.parameterize
  end

  def self.serializer
    const_get("#{name}Serializer")
  end

  def self.serialize(*args)
    serializer.new(*args)
  end

  def serializer
    self.class.const_get("#{self.class.name}Serializer")
  end

  def serialize
    serializer.new(self)
  end

  def to_json(*_options)
    serialize.serialized_json
  end
end
