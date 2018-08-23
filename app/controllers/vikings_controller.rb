class VikingsController < ApplicationController

	before_action :current_viking, only: [:show, :edit, :update, :destroy]


	def index
		@vikings = Viking.all
	end

	def new
		@viking = Viking.new
	end

	def show

	end

	def edit

	end


	def create
		@viking = Viking.new(viking_params)

		if @viking.save
			redirect_to @viking
		else
			flash[:error_message] = @viking.errors.full_messages.join(', ')
			redirect_to new_viking_path
		end
	end

	def update

		if @viking.update(viking_params)
			redirect_to @viking
		else
			flash[:error_message] = @viking.errors.full_messages.join(', ')
			redirect_to edit_viking_path
		end
	end

	def destroy
		@viking.destroy

		redirect_to vikings_path
	end


	private

	def viking_params
		params.require(:viking).permit(:name, :age, :weight, :body_fat, :residence, :calories, :image_url, :diet_id, exercise_ids:[], valhalla_ids:[])
	end


	def current_viking
		@viking = Viking.find(params[:id])
	end



end
