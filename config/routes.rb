Rails.application.routes.draw do
  #resources :product_images
  #resources :users
  #resources :products
 
  namespace :api do
    namespace :v1 do
      resources :products
      resources :categories, only: [:index]
      resources :product_images, only: [:destroy]
      post '/login', to: 'auth#login'
      post '/signup', to: 'auth#signup'
      get '/autologin', to: 'auth#get_current_user'
   end
  end
end
