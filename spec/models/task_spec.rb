require 'rails_helper'

RSpec.describe Task, type: :model do
  it { should validate_uniqueness_of(:id) }
  it { should have_many(:facets) }
  it { should have_many(:chunks).through(:facets) }
  it 'is serialized by TaskSerializer' do
    expect(described_class.serializer).to eq TaskSerializer
  end
end
