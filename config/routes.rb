Rails.application.routes.draw do
  resources :groups
  
  resources :companies do
    resources :groups
  end
  
  root "companies#index"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
