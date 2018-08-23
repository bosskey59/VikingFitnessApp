class Viking < ApplicationRecord
	belongs_to :diet

	has_many :viking_exercises
	has_many :exercises, through: :viking_exercises

	has_many :viking_valhallas
	has_many :valhallas, through: :viking_valhallas

	validates :name, presence: true


	def total_calories
		self.exercises.sum(:calories)
	end

	def total_time
		self.exercises.sum(:time)
	end

	def my_viking_exercises
		VikingExercise.all.select do |viking_exercise|
			viking_exercise.viking == self
		end
	end

end
