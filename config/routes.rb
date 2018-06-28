Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create]
      resources :product_listings, except: [:edit, :new]
      resources :category, only: [:index, :create]
    end
  end
end
