# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home_message/index'
  resources :articles
  resources :conversations, only: [:create] do
    member do
      get :close
    end
    resources :messages, only: [:create]
  end
  resources :profiles

  resources :budgets
  resources :projects
  get 'invitations/update'
  get 'invitations/create'
  get 'invitations/destroy'
  get 'admin/index'

  mount ActionCable.server, at: '/cable'

  root to: 'pages#home'
  devise_for :users
  resources :charges
end
