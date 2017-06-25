require 'rails_helper'

RSpec.describe Meal, type: :model do
  describe 'Associations' do
    it 'belongs_to order' do
      assc = described_class.reflect_on_association(:order)
      expect(assc.macro).to eq :belongs_to
    end
    it 'belongs_to user' do
      assc = described_class.reflect_on_association(:user)
      expect(assc.macro).to eq :belongs_to
    end
  end
end
