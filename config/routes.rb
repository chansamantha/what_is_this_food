Rails.application.routes.draw do
  root :to => "foods#index"
  # Routes for the Diet resource:

  # CREATE
  get("/diets/new", { :controller => "diets", :action => "new_form" })
  post("/create_diet", { :controller => "diets", :action => "create_row" })

  # READ
  get("/diets", { :controller => "diets", :action => "index" })
  get("/diets/:id_to_display", { :controller => "diets", :action => "show" })

  # UPDATE
  get("/diets/:prefill_with_id/edit", { :controller => "diets", :action => "edit_form" })
  post("/update_diet/:id_to_modify", { :controller => "diets", :action => "update_row" })

  # DELETE
  get("/delete_diet/:id_to_remove", { :controller => "diets", :action => "destroy_row" })

  #------------------------------

  # Routes for the Food diet resource:

  # CREATE
  get("/food_diets/new", { :controller => "food_diets", :action => "new_form" })
  post("/create_food_diet", { :controller => "food_diets", :action => "create_row" })

  # READ
  get("/food_diets", { :controller => "food_diets", :action => "index" })
  get("/food_diets/:id_to_display", { :controller => "food_diets", :action => "show" })

  # UPDATE
  get("/food_diets/:prefill_with_id/edit", { :controller => "food_diets", :action => "edit_form" })
  post("/update_food_diet/:id_to_modify", { :controller => "food_diets", :action => "update_row" })

  # DELETE
  get("/delete_food_diet/:id_to_remove", { :controller => "food_diets", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # Routes for the Food resource:

  # CREATE
  get("/foods/new", { :controller => "foods", :action => "new_form" })
  post("/create_food", { :controller => "foods", :action => "create_row" })

  # READ
  get("/foods", { :controller => "foods", :action => "index" })
  get("/foods/:id_to_display", { :controller => "foods", :action => "show" })

  # UPDATE
  get("/foods/:prefill_with_id/edit", { :controller => "foods", :action => "edit_form" })
  post("/update_food/:id_to_modify", { :controller => "foods", :action => "update_row" })

  # DELETE
  get("/delete_food/:id_to_remove", { :controller => "foods", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
