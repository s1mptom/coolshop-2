Coolshop::Application.routes.draw do
  resources :products
    resources :orders


  root to: 'products#index'
end