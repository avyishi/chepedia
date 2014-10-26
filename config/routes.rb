Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:update]
  resources :wikis
  
  resources :charges, :users

  get 'welcome/index'

  get 'welcome/about'

    root to: 'welcome#index'
end
