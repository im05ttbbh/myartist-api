Rails.application.routes.draw do
  get 'genres/index'
  resources :genres
  resources :artists
end
