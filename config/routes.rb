Rails.application.routes.draw do
  resources :items, only: [:index]
  # resources :users, only: [:show]

  resources :users, only: [:show] do
  
    resources :items, only: [:show, :index, :create]
  end

  resources :items, only: [:show, :index, :create]
end