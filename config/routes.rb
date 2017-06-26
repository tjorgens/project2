Rails.application.routes.draw do
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'about', to: 'page#about'
  get 'contact', to: 'page#contact'

  resources :blogs do 
    member do
      get :toggle_status
    end
  end
  
  root to: 'page#home'
end
