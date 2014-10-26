Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:update]
  resources :wikis do
    resources :users, :pages, except: [:index]
    resources :pages, only: [:create, :destroy]
  end

  get 'welcome/index'

  get 'welcome/about'

    root to: 'welcome#index'
end
