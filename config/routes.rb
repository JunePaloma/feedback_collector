Rails.application.routes.draw do
  root "home#index"
  get '/auth/github', as: 'github_login'
  get '/auth/github/callback', to: 'sessions#create'
  get "/dashboard", to: "users#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
