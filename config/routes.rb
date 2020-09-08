Rails.application.routes.draw do
  resources :profiles, only: [:show, :update, :edit], path: :profil
  root to: 'pages#home'
  devise_for :users
end