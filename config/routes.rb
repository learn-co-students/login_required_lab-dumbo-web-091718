Rails.application.routes.draw do
  get 'sessions/new'

  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/secrets' => 'secrets#show'
  # resources :secrets, only: :show

end
