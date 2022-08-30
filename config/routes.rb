Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :products do
  resources :orders, except: :index
  # We added except: :index because we can access orders directly from the home page.
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
