class SessionsController < ApplicationController

	def new
	end

	def create
		viking = Viking.find_by(name: params[:name])

		if viking
			session[:signed_in_viking_id] = viking.id
			redirect_to viking 
		end

	end

end
