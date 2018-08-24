require 'rails_helper'

RSpec.describe Viking, type: :model do
  describe 'viking_name=' do
    it 'sets the name for a new viking' do
      viking = Viking.new
      viking.name = 'Ivar'
      expect(viking.name).to eq 'Ivar'
    end
  end


  describe 'viking_residence' do
    it 'returns the viking home' do
      viking = Viking.new
      viking.residence = 'Milan, Italy'
      expect(viking.residence).to eq 'Milan, Italy'
    end
  end


  describe 'viking_exercise' do
    it 'returns the viking exercises' do
      ivar = Viking.new(name: "Ivar the Boneless", age: 26, weight: 175, body_fat: 10, residence: "The Great Heathen Army", calories: 2500, image_url: "https://em.wattpad.com/c984052977f02b92013020d0ef3637dba0fb4dba/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f7a487647714836754147446476413d3d2d3533373330383334332e313531343937303766633961653730393639313533303039303337352e676966?s=fit&w=720&h=720", diet_id: 1)
      bball = Exercise.new(name:"bball", exercise_type:"cardio", time:60, calories:250.8)
      ivar.exercises << bball
      expect(ivar.exercises).to include(bball)
    end
  end


    describe 'viking_diet' do
    it 'returns the viking diet' do
      ivar = Viking.new(name: "Ivar the Boneless", age: 26, weight: 175, body_fat: 10, residence: "The Great Heathen Army", calories: 2500, image_url: "https://em.wattpad.com/c984052977f02b92013020d0ef3637dba0fb4dba/68747470733a2f2f73332e616d617a6f6e6177732e636f6d2f776174747061642d6d656469612d736572766963652f53746f7279496d6167652f7a487647714836754147446476413d3d2d3533373330383334332e313531343937303766633961653730393639313533303039303337352e676966?s=fit&w=720&h=720", diet_id: 1)
      blah = Diet.new(protein:40, carbs:40, fat:20, diet_type:"Bulking")
      blah.vikings << ivar
      expect(ivar.diet.diet_type).to eq 'Bulking'
    end
  end

  


end
