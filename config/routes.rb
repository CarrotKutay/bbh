Rails.application.routes.draw do
  resources :discount_classes
  resources :warehouses
  resources :ingredients
  resources :products
  resources :articles
  resources :menus
  resources :addresses
  resources :admin_accounts
  resources :provider_accounts
  resources :customer_accounts
  resources :orders
  resources :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
