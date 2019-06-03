class Diet < ApplicationRecord
  # Direct associations

  has_one    :food_diet

  belongs_to :food,
             :counter_cache => true

  # Indirect associations

  # Validations

end
