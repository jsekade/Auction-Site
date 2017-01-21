Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   get '/', to: 'site#home'
  # get '/users', to: 'users#index'
  # get '/users/new', to: 'users#new'
  # get'/users/:id', to: 'users#show'
  # post '/users', to: 'users#create'

  # get '/users/:user_id/products', to: 'products#index'
  # get '/users/:user_id/products/new', to: 'products#new', as: :products
  # get '/users/:user_id/products/:id', to: 'products#show'
  # post '/users/:user_id/products', to: 'products#create' 
  resources :users do
    resources :products
  end

end
