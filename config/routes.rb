Rails.application.routes.draw do
  devise_for :users
  root to: "pages#landing"
  get '/profile', to: 'profiles#show', as: :profile
  get "frontend-conventions", to: "frontend#displayconventions"
  get "/inbox", to: "messages#inbox", as: :inbox


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :user_fish

  resources :fish do

    resources :matches do
      resources :messages, only: [:create, :destroy]
      resources :reviews, only: [:new, :create]
    end

    member do
      get :match
    end

  end

  resources :users
  resources :map
  resources :matches

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
