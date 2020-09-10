Rails.application.routes.draw do

  resources :profiles, only: [:show, :update, :edit]

  resources :budgets
  resources :projects

  root to: 'pages#home'
  devise_for :users
end