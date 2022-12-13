Rails.application.routes.draw do
  resources :reviews, only: [:index, :show, :destroy, :create, :update]
  resources :products, only: [:index, :show, :destroy, :create, :update]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:index, :update, :show]


  post '/login', to: 'session#create'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'session#destroy'
end
