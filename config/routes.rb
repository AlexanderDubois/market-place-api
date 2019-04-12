Rails.application.routes.draw do
  #resources :product_images
  #resources :users
  #resources :products
 
  namespace :api do
    namespace :v1 do
      resources :products
      resources :categories, only: [:index]
      resources :product_images, only: [:destroy]
      post '/users/login', to: 'users#login'
      post '/users/signup', to: 'users#signup'
   end
  end
end
