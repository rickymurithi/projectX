Rails.application.routes.draw do
  # resources :users, only: [:index]
  resources :reviews, only: [:index, :show, :destroy, :create, :update]
  resources :products, only: [:index, :show, :destroy, :create, :update]
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index, :create, :update, :show, :destroy]

  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sesions#destroy'
  get '/logout',to: 'sessions#destroy'
end
