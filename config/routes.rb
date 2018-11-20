Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'menu#index', as: 'home'
  get 'statistics' => 'statistics#statistics', as: 'statistics'
  resources :menu
  resources :products
end
