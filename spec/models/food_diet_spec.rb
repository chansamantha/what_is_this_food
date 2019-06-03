require 'rails_helper'

RSpec.describe FoodDiet, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:diet) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
