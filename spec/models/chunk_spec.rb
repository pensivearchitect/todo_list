require 'rails_helper'

RSpec.describe Chunk, type: :model do
  it { should have_many(:facets) }
  it { should have_many(:tasks).through(:facets) }
  it { should have_many(:appointments).through(:facets) }
  it { should have_many(:people).through(:facets) }
end
