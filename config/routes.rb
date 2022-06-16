Rails.application.routes.draw do

  devise_for :admins
  devise_for :customers

  namespace :admin do
    get "homes/top"=>"homes#top"
    resources :items, only: [:index, :new, :create, :show, :edit, :update]
    resources :orders, only: [:show, :update]
    resources :order_details, only: [:update]
    resources :genres, only: [:index, :create, :edit, :update]
  end
  namespace :public do
    root "homes#show"
    get "home/about"=>"homes#about"
    resources :items, only: [:index, :show]
    resources :orders, only: [:new, :success, :index, :show, :confirm, :create]
    resources :cart_items, only: [:index, :create, :update, :destroy, :destroy_all]
    resources :shipping_adresses, only: [:index, :edit, :create, :update, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
