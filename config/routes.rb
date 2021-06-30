Rails.application.routes.draw do
<<<<<<< HEAD
  root "companies#index"
=======
  resources :clients
  resources :sectors
  resources :managers
>>>>>>> rollback
  
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
