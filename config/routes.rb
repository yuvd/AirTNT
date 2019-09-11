Rails.application.routes.draw do
  get 'pages/index'
  devise_for :users
  root to: 'pages#index'
  get 'profile', to: 'dashboards#profile'
  resources :units do
    resources :bookings, only: [:new, :create]
    get '/bookings/:booking_id/accept', to: 'units#show', as: 'booking_accept'
    get '/bookings/:booking_id/deny', to: 'units#show', as: 'booking_deny'
  end
  resources :bookings, only: [:index, :destroy, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
