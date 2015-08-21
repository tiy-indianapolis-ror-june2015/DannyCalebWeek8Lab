Rails.application.routes.draw do
  mount Payola::Engine => '/payola', as: :payola
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :items
  devise_for :users

  root 'items#index'
end
