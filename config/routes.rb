Rails.application.routes.draw do
  resources :reviews
  resources :products, only: [:index, :show, :destroy, :create, :update]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
