require 'rails_helper'

RSpec.describe Exercise, type: :model do
  describe 'exercise_name=' do
    it 'sets the name for an exercise' do
      exercise = Exercise.new
      exercise.name = 'Ivar'
      expect(exercise.name).to eq 'Ivar'
    end
  end

    describe 'exercise_instruction_link' do
    it 'has link for exercise' do
      exercise = Exercise.new
      exercise.instruction_link = 'Ivar'
      expect(exercise.instruction_link).to eq 'Ivar'
    end
  end


end
