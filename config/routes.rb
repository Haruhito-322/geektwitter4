Rails.application.routes.draw do
  get 'lectures/index'
  get 'lectures/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get'hello/index' => 'hello#index'

  root 'hello#index'
  get 'hello/link' => 'hello#link'
  
  resources :tweets

  root 'lectures#index'
  get 'lectures/index'  => 'lectures#index'
  get 'lectures/new'  => 'lectures#new'
  post 'lectures/new'  => 'lectures#create'

  # Defines the root path route ("/")
  # root "posts#index"
end
