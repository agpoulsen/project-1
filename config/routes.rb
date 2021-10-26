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
  resources :nights

  delete '/favourites/:favourite_id/:venue_id' => 'favourites#remove', :as => 'remove_favourite'


end
