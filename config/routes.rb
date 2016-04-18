Rails.application.routes.draw do
  resources :users
  resources :links
  
  root "welcome#home"
  
  get '/sign_up', to: "welcome#new"

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  get '/index', to: "links#index"
end
