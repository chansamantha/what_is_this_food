class CreateDiets < ActiveRecord::Migration[5.1]
  def change
    create_table :diets do |t|
      t.integer :food_id
      t.string :diet_name

      t.timestamps
    end
  end
end
