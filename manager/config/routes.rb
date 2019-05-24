Rails.application.routes.draw do
  get 'order_items/create'
  get 'order_items/update'
  get 'order_items/destroy'
  get 'carts/show'
  get 'products/index'
  get 'sessions/new'
  get 'sessions/show'
  get 'users/delete'
  get 'home_pages/home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/show', to: 'users#show'
  root 'home_pages#home'
  resources :users

  resources :products, only: [:index]
  resource :cart, only: [:show]
  get '/orders', to: 'carts#show'
  resources :order_items, only: [:create, :update, :destroy]
  root to: "products#index"
end
