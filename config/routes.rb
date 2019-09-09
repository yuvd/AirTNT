Rails.application.routes.draw do
  devise_for :users
  root to: 'units#index'
  
  get 'profile', to: 'dashboards#profile'
  
  resources :units, only: %w[show edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
