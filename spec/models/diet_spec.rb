require 'rails_helper'

RSpec.describe Diet, type: :model do
  
    describe "Direct Associations" do

    it { should have_one(:food_diet) }

    it { should belong_to(:food) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
