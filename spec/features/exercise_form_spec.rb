require 'rails_helper'
require 'capybara/rspec'

describe "The Exercise Form", :type => :feature do

	before do
		@exercise = Exercise.create(name:"bball", exercise_type:"cardio", time:60, calories:250.8, instruction_link: "hs")
	end


  it "creates a exercise on submit" do
    visit '/exercises/new'
    fill_in :name, with: 'bball'
    fill_in :exercise_type, with: 'cardio'
    fill_in :time, with: 50
    fill_in :calories, with: 200
    fill_in :instruction_link, with: "sd"


    find('input[name="commit"]').click
    expect(Exercise.last.name).to eq 'bball'
  end


   describe 'show page' do

    it 'should link to all of the posts the user commented on' do
      visit exercise_path(@exercise)
      expect(page).to have_content(@exercise.name)
    end

  end



end
