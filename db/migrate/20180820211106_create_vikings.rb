class CreateVikings < ActiveRecord::Migration[5.2]
  def change
    create_table :vikings do |t|
      t.string :name
      t.integer :age
      t.float :weight
      t.float :body_fat
      t.string :residence
      t.float :calories

      t.belongs_to :diet

      t.timestamps
    end
  end
end
