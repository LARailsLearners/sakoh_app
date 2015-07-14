Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'home/index'

  root to: "home#index"

  devise_for :users, :controllers => { registrations: 'users' }

  namespace :home do
    resources :users, only: [:index, :show]
  end

  namespace :admin do
    resources :products
    resources :users, only: [:index, :show]
  end

  resources :products do
    resources :reviews
  end
  
end
