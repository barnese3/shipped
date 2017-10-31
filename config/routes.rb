Rails.application.routes.draw do

  devise_for :users
  resources :users
get '/' => 'home#index', as: :root

  resources :jobs
  resources :boats
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
