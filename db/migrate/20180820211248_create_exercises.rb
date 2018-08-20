class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :type
      t.integer :time
      t.float :calories
      t.string :instruction_link

      t.timestamps
    end
  end
end
