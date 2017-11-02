Rails.application.routes.draw do

  resources :boat_jobs
  devise_for :companies
  resources :companies
  resources :jobs
  resources :boats

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end