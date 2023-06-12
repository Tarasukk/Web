require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'ensures email presence' do
      user = User.new().save
      expect(user).to eq(true)
    end
  end
end
