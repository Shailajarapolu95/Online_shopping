Rails.application.routes.draw do
  root "users#index"
  resources :users
  resources :sessions
  resources :products
  get '/show' => 'products#show'
  post '/show' => 'products#show'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  post '/users' => 'users#create'
   get '/signup' => 'users#new'
   post '/signup' => 'users#new'
end
