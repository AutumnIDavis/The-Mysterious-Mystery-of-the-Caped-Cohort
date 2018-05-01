Rails.application.routes.draw do
  resources :scrollzs
  resources :games
  resources :choices
  resources :stages
  resources :users
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
