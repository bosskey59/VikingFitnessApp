class ApplicationController < ActionController::Base

	before_action :define_logged_in_viking

	def redirect_if_not_logged_in
		if !session[:signed_in_viking_id]
			redirect_to login_path
		end
	end

	private
	def define_logged_in_viking

		if(session[:signed_in_viking_id])
			@logged_in_viking = Viking.find(session[:signed_in_viking_id])
		else
			@logged_in_viking = Viking.new
			@logged_in_viking.name = 'Loki'
		end
		
	end

end
