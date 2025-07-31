Rails.application.routes.draw do
  get "bookings/new"
  get "bookings/create"
  get "up" => "rails/health#show", as: :rails_health_check

  resources :flights
  resources :bookings, only: [ :show, :new, :create ]

  root "flights#index"
end
