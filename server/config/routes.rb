Rails.application.routes.draw do
  
  # Health Check Route
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  resources :activities
end
