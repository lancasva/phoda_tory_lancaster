Rails.application.routes.draw do
  devise_for :users

  root 'photographer_profiles#index'

  # Routes for the Photographer_profile resource:
  # CREATE
  get "/photographer_profiles/new", :controller => "photographer_profiles", :action => "new"
  post "/create_photographer_profile", :controller => "photographer_profiles", :action => "create"

  # READ
  get "/photographer_profiles", :controller => "photographer_profiles", :action => "index"
  get "/photographer_profiles/:id", :controller => "photographer_profiles", :action => "show"

  # UPDATE
  get "/photographer_profiles/:id/edit", :controller => "photographer_profiles", :action => "edit"
  post "/update_photographer_profile/:id", :controller => "photographer_profiles", :action => "update"

  # DELETE
  get "/delete_photographer_profile/:id", :controller => "photographer_profiles", :action => "destroy"
  #------------------------------

  # Routes for the Availability resource:
  # CREATE
  get "/availabilities/:id/new", :controller => "availabilities", :action => "new"
  post "/create_availability", :controller => "availabilities", :action => "create"

  # READ
  get "/availabilities", :controller => "availabilities", :action => "index"
  get "/availabilities/:id", :controller => "availabilities", :action => "show"

  # UPDATE
  get "/availabilities/:id/edit", :controller => "availabilities", :action => "edit"
  post "/update_availability/:id", :controller => "availabilities", :action => "update"

  # DELETE
  get "/delete_availability/:id", :controller => "availabilities", :action => "destroy"
  #------------------------------

  # Routes for the Job_request resource:
  # CREATE
  get "/job_requests/new", :controller => "job_requests", :action => "new"
  post "/create_job_request", :controller => "job_requests", :action => "create"

  # READ
  get "/job_requests", :controller => "job_requests", :action => "index"
  get "/job_requests/:id", :controller => "job_requests", :action => "show"

  # UPDATE
  get "/job_requests/:id/edit", :controller => "job_requests", :action => "edit"
  post "/update_job_request/:id", :controller => "job_requests", :action => "update"

  # DELETE
  get "/delete_job_request/:id", :controller => "job_requests", :action => "destroy"
  #------------------------------

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end



end
