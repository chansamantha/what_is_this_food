class DietsController < ApplicationController
  def index
    @q = Diet.ransack(params[:q])
    @diets = @q.result(:distinct => true).includes(:food, :food_diet).page(params[:page]).per(10)

    render("diet_templates/index.html.erb")
  end

  def show
    @diet = Diet.find(params.fetch("id_to_display"))

    render("diet_templates/show.html.erb")
  end

  def new_form
    @diet = Diet.new

    render("diet_templates/new_form.html.erb")
  end

  def create_row
    @diet = Diet.new

    @diet.food_id = params.fetch("food_id")
    @diet.diet_name = params.fetch("diet_name")

    if @diet.valid?
      @diet.save

      redirect_back(:fallback_location => "/diets", :notice => "Diet created successfully.")
    else
      render("diet_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_food
    @diet = Diet.new

    @diet.food_id = params.fetch("food_id")
    @diet.diet_name = params.fetch("diet_name")

    if @diet.valid?
      @diet.save

      redirect_to("/foods/#{@diet.food_id}", notice: "Diet created successfully.")
    else
      render("diet_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @diet = Diet.find(params.fetch("prefill_with_id"))

    render("diet_templates/edit_form.html.erb")
  end

  def update_row
    @diet = Diet.find(params.fetch("id_to_modify"))

    @diet.food_id = params.fetch("food_id")
    @diet.diet_name = params.fetch("diet_name")

    if @diet.valid?
      @diet.save

      redirect_to("/diets/#{@diet.id}", :notice => "Diet updated successfully.")
    else
      render("diet_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_food
    @diet = Diet.find(params.fetch("id_to_remove"))

    @diet.destroy

    redirect_to("/foods/#{@diet.food_id}", notice: "Diet deleted successfully.")
  end

  def destroy_row
    @diet = Diet.find(params.fetch("id_to_remove"))

    @diet.destroy

    redirect_to("/diets", :notice => "Diet deleted successfully.")
  end
end
