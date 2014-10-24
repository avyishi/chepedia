Rails.application.routes.draw do

  resources :wikis

  get 'welcome/index'

  get 'welcome/about'

    root to: 'welcome#index'
end
