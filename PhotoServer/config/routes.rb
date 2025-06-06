Rails.application.routes.draw do
  resource :user, only: [ :new, :create ]
  resource :session
  resources :passwords, param: :token
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  root to: "users#index"

  get "/api/status", to: "api#status"
  get "/user/new", to: "users#new"
  post "/user/new", to: "users#create"
  get "/user/me", to: "users#get_current_user"
  get "/user/home", to: "users#home"
  # get "/session/new", to: "sessions#new"
  post "/user/login", to: "auth#user_login"
end
