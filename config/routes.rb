Rails.application.routes.draw do
  resources :profiles, only: [:show, :update, :edit]
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
