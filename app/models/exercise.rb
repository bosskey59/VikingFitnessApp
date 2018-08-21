class Exercise < ApplicationRecord

	has_many :viking_exercises
	has_many :vikings, through: :viking_exercises
	validates_presence_of :name, :exercise_type, :time, :calories, :instruction_link
	validates :calories, numericality: { greater_than: 0}
	validates :time, numericality: { greater_than: 0}


end
