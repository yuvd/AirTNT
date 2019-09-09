Rails.application.routes.draw do
  devise_for :users
  resources :units do
    resources :bookings, only: [:new, :create, :edit, :update]
  end

  resources :bookings, only: [:show, :index, :destroy]

  root to: 'units#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
