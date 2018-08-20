class Exercise < ApplicationRecord

	has_many :viking_exercises
	has_many :vikings, through: :viking_exercises

	
end
