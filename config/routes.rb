Rails.application.routes.draw do

get '/' => 'home#index', as: :root

  resources :jobs
  resources :boats
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
