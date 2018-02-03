require 'rails_helper'

RSpec.describe Task, type: :model do
  it { should have_many(:dependencies) }
  it { should have_many(:tasks).through(:dependencies) }
  it 'allows me to add tasks as dependencies' do
    task = Task.create
    dependency = Task.create
    task.tasks << dependency
    # task.tasks.length
    tasks = task.tasks
    predicate = tasks.first.id
    # ap tasks[0]
    expect(predicate).to eq dependency.id
  end
end
