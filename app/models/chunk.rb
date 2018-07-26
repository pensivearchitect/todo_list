class Chunk < ApplicationRecord
  has_closure_tree
  has_many :facets
  has_many :tasks, through: :facets
  has_many :appointments, through: :facets
  has_many :people, through: :facets
end
