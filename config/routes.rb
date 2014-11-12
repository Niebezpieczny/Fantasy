Rails.application.routes.draw do
	devise_for :users
  root to: 'visitors#index'
  resources :teams
  resources :players
  resources :users, only: [:index]
end
