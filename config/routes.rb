Rails.application.routes.draw do
  devise_for :users
  root to: "pages#landing"

  get '/profile', to: 'profiles#show', as: :profile
  get "frontend-conventions", to: "frontend#displayconventions"
  get "/inbox", to: "messages#inbox", as: :inbox
  get "/users/:id/profile", to: "users#public_profile", as: :public_user_profile

  resources :user_fish
  resources :questions, only: [:index, :create]

  resources :fish do
    resources :matches, only: [:new, :create, :index, :show] do
      resources :messages, only: [:create, :destroy]
      resources :reviews, only: [:new, :create]
    end

    member do
      get :match
    end
  end


  resources :matches, only: [:index, :show] do
    resources :messages, only: [:create]
  end

  resources :users
  resources :map


  get "up" => "rails/health#show", as: :rails_health_check
end
