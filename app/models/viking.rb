class Viking < ApplicationRecord
	belongs_to :diet

	has_many :viking_exercises
	has_many :exercises, through: :viking_exercises

	has_many :viking_valhallas
	has_many :valhallas, through: :viking_valhallas

	validates_presence_of :name, :age, :weight, :body_fat, :residence ,:calories, :image_url
	validates :calories, numericality: { greater_than: 0}
	validates :weight, numericality: { greater_than: 0}
	validates :age, numericality: { greater_than: 0}
	validates :body_fat, numericality: { greater_than: 0}




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
