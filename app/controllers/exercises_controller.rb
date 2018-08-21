class ExercisesController < ApplicationController
  before_action :current_exercise, only: [:show, :edit, :update, :destroy]


  def index
    @exercises = Excersice.all
  end

  def show

  end

  def new
    @exercise = Excersice.new
  end

  def create
    @exercise = Excersice.create(exercise_params)

    redirect_to @exercise
  end

  def edit

  end

  def update
    @exercise.update(exercise_params)

    redirect_to @exercise
  end

  def destroy
    @exercise.destroy

    redirect_to exercises_path
  end

  private

  def exercise_params
    params.require(:exercise).permit(:name, :exercise_type, :time, :calories, :instruction_link)
  end


  def current_exercise
    @exercise = Excersice.find(params[:id])
  end

end
