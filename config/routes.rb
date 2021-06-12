Rails.application.routes.draw do
  get 'sessions/new'
  resources :users
  resources :pictures
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
