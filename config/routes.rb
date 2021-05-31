Rails.application.routes.draw do
  root "users#new"
  resources :users

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  get '/show', to: "sessions#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
