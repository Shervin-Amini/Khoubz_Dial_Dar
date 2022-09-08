Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users
  resources :orders
  resources :products,except: [:new, :create,:update, :edit] do
    resources :orders, except: [:index]
  end
  get "/mes-recettes", to: "products#recipes"
  get "/mes-recettes/new", to: "products#new", as: "new_recipe"
  post "/mes-recettes/create", to: "products#create", as: "recipes"
  get "/mes-recettes/:id/edit", to: "products#edit", as: "edit_recipe"
  patch "/mes-recettes/:id", to: "products#update", as: "recipe"
  patch "/products/:id", to: "products#update"
end
