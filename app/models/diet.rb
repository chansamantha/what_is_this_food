class Diet < ApplicationRecord
  # Direct associations

  belongs_to :food,
             :counter_cache => true

  # Indirect associations

  # Validations

end
