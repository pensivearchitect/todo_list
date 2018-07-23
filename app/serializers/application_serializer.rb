# The reason we do this is so that models can figure out
# what serializes them, allowing objects that are not models
# to not have to worry about how to serialize models
# TODO: Investigate implementing serializers on the model objects
# themselves:
# class Task < ApplicationRecord
#   class Serializer
#     include FastJsonapi::ObjectSerializer
class ApplicationSerializer
  include FastJsonapi::ObjectSerializer
  @serializer_map = {}
  @serializer_list = []
  def self.serializers
    @serializer_map
  end

  def self.serializes
    raise NotImplementedError
  end

  def self.inherited(subclass)
    @serializer_list << subclass
  end

  def self.eager_load
    load_path = "#{Rails.root}/app/serializers"
    matcher = %r{ \A#{Regexp.escape(load_path)}\/(.*)\.rb\Z }
    Dir.glob("#{load_path}/*.rb").each do |file|
      require_dependency file.sub(matcher, '\1')
    end
  end

  def self.register
    eager_load
    @serializer_list.map do |subclass|
      @serializer_map[subclass.serializes.parameterize] = subclass
    end
  end
end
