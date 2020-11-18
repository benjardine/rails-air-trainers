Rails.application.routes.draw do
  get 'training_sessions/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :training_sessions, only: [:index, :new, :create, :edit, :update, :show] do
    resources :bookings, only: [ :new, :create]
  end
  resources :bookings, only: [:index]
end
