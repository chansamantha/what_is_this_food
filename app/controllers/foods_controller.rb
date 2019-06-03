class FoodsController < ApplicationController
  def index
    @foods = Food.all

    render("food_templates/index.html.erb")
  end

  def show
    @food = Food.find(params.fetch("id_to_display"))

    render("food_templates/show.html.erb")
  end

  def new_form
    @food = Food.new

    render("food_templates/new_form.html.erb")
  end

  def create_row
    @food = Food.new

    @food.food_name = params.fetch("food_name")

    if @food.valid?
      @food.save

      redirect_back(:fallback_location => "/foods", :notice => "Food created successfully.")
    else
      render("food_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @food = Food.find(params.fetch("prefill_with_id"))

    render("food_templates/edit_form.html.erb")
  end

  def update_row
    @food = Food.find(params.fetch("id_to_modify"))

    @food.food_name = params.fetch("food_name")

    if @food.valid?
      @food.save

      redirect_to("/foods/#{@food.id}", :notice => "Food updated successfully.")
    else
      render("food_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @food = Food.find(params.fetch("id_to_remove"))

    @food.destroy

    redirect_to("/foods", :notice => "Food deleted successfully.")
  end
end
