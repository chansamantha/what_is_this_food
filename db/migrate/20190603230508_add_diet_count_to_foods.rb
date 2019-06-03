class AddDietCountToFoods < ActiveRecord::Migration[5.1]
  def change
    add_column :foods, :diets_count, :integer
  end
end
