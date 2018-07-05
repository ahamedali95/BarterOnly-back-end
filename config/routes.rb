Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      get "/users", to: "users#index"
      post "/users", to: "users#create"
      get "/users/:id/product_listings", to: "users#user_product_listings"
      resources :product_listings, except: [:edit, :new]
      resources :categories, only: [:index, :create]
      resources :purchases, only: [:index, :create]
    end
  end

  #post "/users", to: "users#create"
  post "/sessions", to: "sessions#create"
end
