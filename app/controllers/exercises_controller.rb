class ExercisesController < ApplicationController
  before_action :current_exercise, only: [:show, :edit, :update, :destroy]


  def index
    @exercises = Exercise.all
  end

  def show

  end

  def new
    @exercise = Exercise.new(flash[:form_values])
  end

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.valid?
      @exercise.save
      redirect_to @exercise
    else
      flash[:error_message] = @exercise.errors.full_messages.join(', ')
      flash[:form_values] = exercise_params
      redirect_to new_exercise_path
    end
  end

  def edit

  end

  def update
    if @exercise.update(exercise_params)
      redirect_to @exercise
    else
      flash[:error_message] = @exercise.errors.full_messages.join(', ')
      redirect_to edit_exercise_path
    end


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
    @exercise = Exercise.find(params[:id])
  end

end
