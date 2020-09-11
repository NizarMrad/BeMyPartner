Rails.application.routes.draw do

  resources :articles

  resources :profiles

  resources :budgets
  resources :projects
  get 'invitations/update'
  get 'invitations/create'
  get 'invitations/destroy'

  root to: 'pages#home'
  devise_for :users
  resources :charges

end