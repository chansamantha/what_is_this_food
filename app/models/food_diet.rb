class FoodDiet < ApplicationRecord
  # Direct associations

  belongs_to :diet

  # Indirect associations

  has_one    :food,
             :through => :diet,
             :source => :food

  # Validations

end
