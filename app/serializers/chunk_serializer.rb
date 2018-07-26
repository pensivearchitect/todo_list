class ChunkSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content
  set_type :chunk
  has_many :facets
  has_many :task, through: :facets
  has_many :appointment, through: :facets
  has_many :person, through: :facets
  belongs_to :parent, record_type: Chunk
  has_many :children, record_type: Chunk
  has_many :self_and_ancestors, record_type: Chunk
  has_many :self_and_descendants, record_type: Chunk
end
