Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "/users", to: "users#index"
  # Read
  get "/posts", to: "posts#index"
  # Create
  get "posts/new", to: "posts#new"
  post "posts", to: "posts#create"
  # Read
  get "/posts/:id", to: "posts#show", as: :post
  # Edit
  get "posts/:id/edit", to: "posts#edit"
  patch "posts/:id", to: "posts#update"
  # Delete
  delete "posts/:id", to: "posts#destroy"




  # resources :users, only: [:index, :show]
  #   resources :posts, only: [:create, :new, :show, :edit, :destroy, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
