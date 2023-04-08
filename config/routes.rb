Rails.application.routes.draw do
  resources :reviews
  resources :tours
  resources :contacts
  resources :users
  resources :bookings
end
