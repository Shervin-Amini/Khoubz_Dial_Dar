Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :orders
  resources :products,except: [:new,:update, :edit] do
    resources :orders, except: [:index]
  end
  get"/mes-notifications", to: "products#notifications"
  get "/mes-recettes", to: "products#recipes"
  get "/mes-recettes/new", to: "products#new", as: "new_recipe"
  get "/mes-recettes/:id/edit", to: "products#edit", as: "edit_recipe"
  patch "/products/:id", to: "products#update"
end
