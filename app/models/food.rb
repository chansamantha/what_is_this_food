class Food < ApplicationRecord
  # Direct associations

  has_many   :diets

  # Indirect associations

  has_many   :food_diets,
             :through => :diets,
             :source => :food_diet

  # Validations

end
