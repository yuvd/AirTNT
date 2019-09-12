Rails.application.routes.draw do
  root to: 'pages#index'
  devise_for :users

  get 'pages/index'
  
    get 'profile', to: 'dashboards#profile', as: 'dashboard_user'
    get '/units/dashboard', to: 'dashboards#units', as: 'dashboard_units'

  resources :units do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index, :destroy, :edit, :update] do
    get '/accept', to: 'bookings#accept', as: 'accept'
    get '/decline', to: 'bookings#decline', as: 'decline'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
