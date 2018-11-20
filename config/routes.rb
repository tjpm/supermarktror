Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'menu#index', as: 'home'
  get 'statistics' => 'statistics#statistics', as: 'statistics'
  get 'new' => 'products#new', as: 'new'
  resources :menu
  resources :products
  resources :suppliers
  resources :orders
end
