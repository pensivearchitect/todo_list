require 'rails_helper'

RSpec.describe Task, type: :model do
  it { should have_many(:dependencies) }
  it { should have_many(:tasks).through(:dependencies) }
  it { should validate_numericality_of(:id) }
  it 'allows me to add tasks as dependencies' do
    task = Fabricate.build(:task)
    dependency = Fabricate.build(:task, id: 2)
    task.tasks << dependency
    tasks = task.tasks
    predicate = tasks.first.id
    expect(predicate).to eq dependency.id
  end
  it 'is serialized by TaskSerializer' do
    expect(described_class.serializer).to eq TaskSerializer
  end
end
