class VikingsController < ApplicationController

	before_action :current_viking, only: [:show, :edit, :update, :destroy]
	# before_action :redirect_if_not_logged_in, only: [:index]

	def index
		@vikings = Viking.all
	end

	def new
		@viking = Viking.new
	end

	def show

	end

	def edit
		#byebug
		if params[:id].to_i != @logged_in_viking.id
			render :show
		end

	end


	def create
		@viking = Viking.new(viking_params)

		if @viking.save
			redirect_to @viking
		else
			error_array = @viking.errors.full_messages.join(', ')
			error_array.sub!("Diet must be less than 4", "Viking eat MEAT")
			flash[:error_message] = error_array
			redirect_to new_viking_path
		end
	end

	def update

		if @viking.update(viking_params)
			redirect_to @viking
		else
			error_array = @viking.errors.full_messages.join(', ')
			error_array.sub!("Diet must be less than 4", "Viking eat MEAT")
			flash[:error_message] = error_array
			redirect_to edit_viking_path
		end
	end

	def destroy
		@viking.destroy

		redirect_to vikings_path
	end


	private

	def viking_params
		params.require(:viking).permit(:name, :password, :password_confirmation, :age, :weight, :body_fat, :residence, :calories, :image_url, :diet_id, exercise_ids:[], valhalla_ids:[])
	end


	def current_viking
		@viking = Viking.find(params[:id])
	end



end
