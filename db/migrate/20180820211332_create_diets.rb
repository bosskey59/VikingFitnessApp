class CreateDiets < ActiveRecord::Migration[5.2]
  def change
    create_table :diets do |t|
      t.float :carbs
      t.float :fat
      t.float :protein
      t.string :type
      t.float :calculated_calories

      t.timestamps
    end
  end
end
