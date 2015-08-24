Rails.application.routes.draw do

  post 'search' => 'search#index', as: :search

  get 'user/:user_id' => 'receipts#index', as: :user_receipts
  get 'receipt/:receipt_id' => 'receipts#show', as: :show_receipt

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :items
  get '/remove_from_cart/:line_item_id' => 'line_items#remove_from_cart', as: :remove_from_cart

  devise_for :users, controllers: {
    confirmations:  "users/confirmations",
    # omniauth_callbacks: 'users/omniauth_callbacks'
    passwords:      "users/passwords",
    registrations:  "users/registrations",
    sessions:       "users/sessions",
    unlocks:        "users/unlocks"
  }

  resources :carts, only: [:show]

  resources :charges

  resources :line_items, only: [:create]

  root 'items#index'

  get '/show_quantity_form/:line_item_id' => 'carts#show_quantity_form', as: :show_quantity_form
  post '/update_quantity_form/:line_item_id' => 'carts#update_quantity_form', as: :update_quantity_form

end
