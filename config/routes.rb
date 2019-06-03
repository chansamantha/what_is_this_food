Rails.application.routes.draw do
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
