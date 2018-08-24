class VikingExercisesController  < ApplicationController
  before_action :redirect_if_not_logged_in, only: [:create, :destroy]

  def create
    VikingExercise.create(viking_id:session[:signed_in_viking_id], exercise_id:session[:current_exercise_id])
    redirect_to exercises_path
  end

  def destroy
    viking_exercise = VikingExercise.find(params[:viking_exercise_id])
    viking_exercise.destroy
    redirect_to viking_exercise.viking
  end

end
