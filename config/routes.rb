Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :orders, only: :index
  resources :products do
    resources :orders, except: [:index]
  end
end
