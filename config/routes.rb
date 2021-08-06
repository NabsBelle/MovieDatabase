Rails.application.routes.draw do

  root to: 'movies#index'
get '/movies/:id' => 'movies#show', as: :movie

resources :new
resources :edit

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
