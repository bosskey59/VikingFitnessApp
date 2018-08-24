require 'rails_helper'

RSpec.describe Diet, type: :model do
  describe 'diet_macros' do
    it 'diet has macros' do
      diet = Diet.new
      diet.carbs = 50
      diet.fat = 20
      diet.protein = 30
      expect(diet.carbs).to eq 50
      expect(diet.fat).to eq 20
      expect(diet.protein).to eq 30
    end
  end

    describe 'diet_type' do
    it 'has link for exercise' do
      diet = Diet.new
      diet.diet_type = "blah"
      expect(diet.diet_type).to eq 'blah'
    end
  end


end
