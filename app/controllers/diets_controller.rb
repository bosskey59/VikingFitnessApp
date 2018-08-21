class DietsController < ApplicationController

	def index
		@diets = Diet.all
	end

	def show 
		@diet = Diet.find(params:[id])
	end


end
