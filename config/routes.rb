Rails.application.routes.draw do
  mount Coverband::Reporters::Web.new, at: '/coverage'

  root 'pages#index'
  get 'pages/secret'
  resources :users, only: [:index, :new, :create]
  resources :user_sessions, only: [:new, :create, :destroy]
end
