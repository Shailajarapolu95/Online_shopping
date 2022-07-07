Rails.application.routes.draw do
  root "users#index"
  resources :users
  resources :sessions
  resources :products
  resources :orders
  resources :addresses
  get '/lineitems' => 'line_items#show'
  get '/shopping' => 'shops#show'
  get '/cart' => 'carts#show'
  get '/add_to_cart/:id' => 'carts#add_to_cart'
  delete 'carts/:id' => "carts#destroy"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
   post '/users' => 'users#create'

   get '/signup' => 'users#new'
   post '/signup' => 'users#new'
   get '/order/:id' => 'orders#create'
   get '/orders' => 'orders#index'
  post '/add_address' => 'addresses#new'
  get '/add_address' => 'addresses#new'
  get '/address' => 'addresses#index'
end
