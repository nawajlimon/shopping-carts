Rails.application.routes.draw do
  resources :products
  resources :order_items
  resource :carts, only: [:show]
  
  root "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
