HnCloneRails::Application.routes.draw do

  root :to => 'posts#index'

  # #Post Routes
  resources :posts, :only => [:index, :create, :new, :show, :delete]
  # get 'posts' => 'posts#index'

  # get 'posts/new' => 'posts#new'

  # post 'posts' => 'posts#create'

  # get 'posts/:id' => 'posts#show'

  # delete 'posts/:id' => 'posts#delete'


  #User Routes

  # resources :users

  get 'users' => 'users#index'

  post 'users' => 'users#create'

  get 'users/new' => 'users#new', as: :new_user

  get 'users/:id/edit' => 'users#edit', as: :edit_user

  get 'users/:id' => 'users#show', as: :user

  put 'users/:id' => 'users#update'

  delete 'users/:id' => 'users#delete'

  #Comment Routes

  resources :comments, :only => [:index, :create, :new, :show, :delete]

  # get 'comments' => 'comments#index'

  # get 'comments/new' => 'comments#new'

  # post 'comments' => 'comments#create'

  # get 'comments/:id' => 'comments#show'

  # delete 'comments/:id' => 'comments#delete'

  #

  resources :sessions, :only => [:new, :create, :destroy]

  match '/signup',  to: 'users#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
