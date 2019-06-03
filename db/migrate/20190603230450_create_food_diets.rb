class CreateFoodDiets < ActiveRecord::Migration[5.1]
  def change
    create_table :food_diets do |t|
      t.integer :food_id
      t.integer :diet_id
      t.boolean :compliant

      t.timestamps
    end
  end
end
