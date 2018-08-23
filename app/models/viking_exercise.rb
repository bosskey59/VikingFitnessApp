class VikingExercise < ApplicationRecord
	belongs_to :viking
	belongs_to :exercise

	def exercise_name
		self.exercise.name
	end

	def exercise_calories
		self.exercise.calories
	end

	def exercise_time
		self.exercise.time
	end

end
