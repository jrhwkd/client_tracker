Rails.application.routes.draw do
  resources :clients
  resources :managers
  
  resources :companies do
    resources :groups
  end
  
  resources :groups do
    resources :managers
  end

  root "companies#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
