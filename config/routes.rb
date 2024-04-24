Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :articles
    end
  end
  devise_for :models
  root "base#index"
  
  get '/about', to: 'about#index', as: 'about'
  get '/profile', to: 'profile#index', as: 'profile'

  
  


  resource :profile, only: [:show]

  resources :articles do
    resources :comments
  end
end
