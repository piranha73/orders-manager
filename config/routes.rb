Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#index"
  get '/about', to: "pages#about"
  # list all the tables | /tables - index
  get '/tables', to: "tables#index"
  get 'tables/new', to: "tables#new"
  post 'tables', to: "tables#create"
  # show a table page where i can see tables details (and orders) | /tables/:id - show
  get 'tables/:table_id/orders/new', to: "orders#new", as: :new_table_order
  post 'tables/:table_id/orders', to: "orders#create", as: :table_orders
  get '/tables/:id', to: "tables#show", as: :table
  delete 'tables/:id', to: "tables#destroy"
  delete 'orders/:id', to: "orders#destroy", as: :order
end


