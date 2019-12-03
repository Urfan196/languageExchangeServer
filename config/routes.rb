Rails.application.routes.draw do
  resources :availabilities, only: [:index, :show, :create, :update, :destroy]
  resources :fluencies, only: [:index, :show, :create, :update, :destroy]
  resources :languages, only: [:index, :show, :create, :update, :destroy]
  resources :appointments, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :show, :create, :update, :destroy]
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
