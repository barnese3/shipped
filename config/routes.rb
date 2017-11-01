Rails.application.routes.draw do

  resources :companies
  devise_for :users
  resources :users
  root 'home#index'


  resources :companies
  devise_for :views
  resources :jobs
  resources :boats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#index"

end
