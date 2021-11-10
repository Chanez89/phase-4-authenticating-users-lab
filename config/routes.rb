Rails.application.routes.draw do
  resources :articles, only: [:index, :show]
  # resources :sessions, only: [:create, :destroy] works BUT not correct endpoints
  post '/login', to: 'sessions#create'
  delte '/logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
