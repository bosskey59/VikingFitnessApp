class Valhalla < ApplicationRecord
	has_many :viking_valhallas
	has_many :vikings, through: :viking_valhallas
end
