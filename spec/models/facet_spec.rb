require 'rails_helper'

RSpec.describe Facet, type: :model do
  it { should belong_to(:chunk) }
  it { should belong_to(:task).optional }
  it { should belong_to(:person).optional }
  it { should belong_to(:appointment).optional }
end
