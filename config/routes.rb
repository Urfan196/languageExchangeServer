Rails.application.routes.draw do
  resources :availabilities
  resources :fluencies
  resources :languages
  resources :appointments
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
