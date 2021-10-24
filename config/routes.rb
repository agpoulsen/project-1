Rails.application.routes.draw do

  get 'session/new'
  get 'session/create'
  get 'session/destroy'
  root :to => 'pages#home'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users, :only => [:new, :create]
  resources :venues
  resources :favourites


end
