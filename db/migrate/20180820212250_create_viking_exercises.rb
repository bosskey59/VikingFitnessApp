class CreateVikingExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :viking_exercises do |t|
    	
      t.belongs_to :viking
      t.belongs_to :exercise

      t.timestamps
    end
  end
end
