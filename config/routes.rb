Rails.application.routes.draw do
  root "home#index"
  get '/auth/github', as: 'github_login'
  get '/auth/github/callback', to: 'sessions#create'
  get "/logout", to "sessions#destroy"
  get "/dashboard", to: "dashboard#index"

  resources :groups, only: [:show] do
    resources :feedback, only: [:new, :create]
  end
end
