class FoodDietsController < ApplicationController
  def index
    @food_diets = FoodDiet.all

    render("food_diet_templates/index.html.erb")
  end

  def show
    @food_diet = FoodDiet.find(params.fetch("id_to_display"))

    render("food_diet_templates/show.html.erb")
  end

  def new_form
    @food_diet = FoodDiet.new

    render("food_diet_templates/new_form.html.erb")
  end

  def create_row
    @food_diet = FoodDiet.new

    @food_diet.food_id = params.fetch("food_id")
    @food_diet.diet_id = params.fetch("diet_id")
    @food_diet.compliant = params.fetch("compliant")

    if @food_diet.valid?
      @food_diet.save

      redirect_back(:fallback_location => "/food_diets", :notice => "Food diet created successfully.")
    else
      render("food_diet_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @food_diet = FoodDiet.find(params.fetch("prefill_with_id"))

    render("food_diet_templates/edit_form.html.erb")
  end

  def update_row
    @food_diet = FoodDiet.find(params.fetch("id_to_modify"))

    @food_diet.food_id = params.fetch("food_id")
    @food_diet.diet_id = params.fetch("diet_id")
    @food_diet.compliant = params.fetch("compliant")

    if @food_diet.valid?
      @food_diet.save

      redirect_to("/food_diets/#{@food_diet.id}", :notice => "Food diet updated successfully.")
    else
      render("food_diet_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @food_diet = FoodDiet.find(params.fetch("id_to_remove"))

    @food_diet.destroy

    redirect_to("/food_diets", :notice => "Food diet deleted successfully.")
  end
end
