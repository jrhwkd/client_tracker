Rails.application.routes.draw do
  root "companies#index"
  
  resources :sectors
  
  resources :clients

  resources :companies do
    resources :groups
  end
  
  resources :groups do
    resources :managers
  end

  resources :managers do
    resources :clients
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
