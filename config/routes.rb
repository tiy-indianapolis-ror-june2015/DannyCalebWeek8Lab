Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :items
  get '/add_to_cart/:item_id' => 'items#add_to_cart', as: :add_to_cart
  get '/remove_from_cart/:item_id' => 'items#remove_from_cart', as: :remove_from_cart
  devise_for :users

  resources :carts, only: [:show]

  resources :charges

  root 'items#index'

  get '/show_quantity_form/:item_id' => 'carts#show_quantity_form', as: :show_quantity_form
  post '/update_quantity_form/:item_id' => 'carts#update_quantity_form', as: :update_quantity_form

end
