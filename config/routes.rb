Rails.application.routes.draw do
  resources :events

  resources :scrollzs
  resources :games
  resources :choices
  resources :stages

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


root 'dashboard#index'
namespace :api do
  resources :events
end
resources :events, only: [:index, :create] do
  get :search, on: :collection
end
