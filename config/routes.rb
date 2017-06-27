Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:show]
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about-me', to: 'page#about'
  get 'contact', to: 'page#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  
  root to: 'page#home'
end