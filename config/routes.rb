Rails.application.routes.draw do
  root to: 'homes#index'
  get '/contact', to: 'homes#contact'
  get '/about', to: 'homes#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products, only: [:index]
  resources :order_items, only: [:create, :update, :destroy]
  resources :contacts, only: [:create, :new]

  get '/cart', to: 'carts#show'
  
  # root to: "products#index"
end
