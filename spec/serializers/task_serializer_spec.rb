require 'rails_helper'

RSpec.describe TaskSerializer do
  describe 'serializes' do
    it 'tasks into json' do
      task = Fabricate.build(:task)
      json = described_class.new(task).serializable_hash
      expect(json[:data][:attributes][:priority]).to eq 1
    end
  end
end
