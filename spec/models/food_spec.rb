require 'rails_helper'

RSpec.describe Food, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:diets) }

    end

    describe "InDirect Associations" do

    it { should have_many(:food_diets) }

    end

    describe "Validations" do
      
    end
end
