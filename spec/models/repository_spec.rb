require 'rails_helper'

RSpec.describe Repository, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:remote_id) }
    it { should validate_presence_of(:stargazers_count) }
  end
  
  describe 'associations' do
    it { should belong_to(:user) }
  end
end
