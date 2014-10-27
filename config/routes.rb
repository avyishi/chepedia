Rails.application.routes.draw do

  get 'collaborators/index'

  get 'collaborators/new'

  devise_for :users
  resources :users, only: [:update]
  resources :wikis
  resources :charges, :users

  get 'welcome/index'

  get 'welcome/about'

    root to: 'welcome#index'
end
