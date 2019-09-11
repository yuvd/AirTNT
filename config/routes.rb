Rails.application.routes.draw do
  devise_for :users
  root to: 'units#index'
  get 'profile', to: 'dashboards#profile'
  resources :units do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :destroy, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
