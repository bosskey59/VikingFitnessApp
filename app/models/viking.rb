class Viking < ApplicationRecord
	belongs_to :diet

	has_many :viking_exercises
	has_many :exercises, through: :viking_exercises

	has_many :viking_valhallas
	has_many :valhallas, through: :viking_valhallas

	validates :name, presence: true

end
