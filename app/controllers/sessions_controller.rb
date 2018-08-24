class SessionsController < ApplicationController

	def new
	end

	def create
		viking = Viking.find_by(name: params[:name])

		if viking && viking.authenticate(params[:password])
			session[:signed_in_viking_id] = viking.id
			redirect_to viking
		else
			flash[:error] = "Incorrect Username/Password Combination"
  			redirect_to login_path
		end
	end


	def destroy
		reset_session
		redirect_to vikings_path
	end

end
