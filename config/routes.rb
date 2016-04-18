Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :links, only: [:index, :new, :create, :edit, :update]
  
  root "welcome#home"

  get '/sign_up', to: "welcome#new"
  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
  get '/index', to: "links#index"
end
