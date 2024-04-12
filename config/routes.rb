Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/new', to: 'posts#new'
  get 'posts/:id', to: 'posts#show', constraints: {id: /\d+/}
  get 'posts/:topic', to: 'posts#topic'

  post 'posts/create', to: 'posts#create'
  get 'posts/edit/:id', to: 'posts#edit'
  post 'posts/update/:id', to: 'posts#update'
  root to: 'posts#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
