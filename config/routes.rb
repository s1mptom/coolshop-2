Coolshop::Application.routes.draw do
  root to: 'products#index'

  resources :products
  resources :orders do
    post :add_product, on: :collection
  end
  resources :order_products
  resources :categories
end