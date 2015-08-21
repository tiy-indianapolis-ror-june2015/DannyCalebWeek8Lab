Rails.application.routes.draw do
  mount Payola::Engine => '/payola', as: :payola

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :items
  get '/add_to_cart/:item_id' => 'items#add_to_cart', as: :add_to_cart
  get '/remove_from_cart/:item_id' => 'items#remove_from_cart', as: :remove_from_cart
  devise_for :users

  resources :carts, only: [:show]

  root 'items#index'
end
