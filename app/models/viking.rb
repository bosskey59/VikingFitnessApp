class Viking < ApplicationRecord

	has_secure_password

	belongs_to :diet

	has_many :viking_exercises
	has_many :exercises, through: :viking_exercises

	has_many :viking_valhallas
	has_many :valhallas, through: :viking_valhallas

	validates_presence_of :name, :age, :weight, :body_fat, :residence ,:calories, :image_url
	validates :password, presence: true, confirmation: true
	validates :calories, numericality: { greater_than: 0}
	validates :weight, numericality: { greater_than: 0}
	validates :age, numericality: { greater_than: 0}
	validates :body_fat, numericality: { greater_than: 0}
	validates :diet_id, numericality: { greater_than: 0, less_than:4}





	def total_calories
		self.exercises.sum(:calories)
	end

	def total_time
		self.exercises.sum(:time)
	end

	def calc_fat
		fat= (self.diet.fat/100)
		self.calories*fat
	end

	def calc_protein
		protein= (self.diet.protein/100)
		self.calories*protein
	end

	def calc_carbs
		carbs= (self.diet.carbs/100)
		self.calories*carbs
	end

	def my_viking_exercises
		VikingExercise.all.select do |viking_exercise|
			viking_exercise.viking == self
		end
	end

end
