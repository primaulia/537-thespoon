Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  ### See all restaurants
  get '/restaurants', to: 'restaurants#index'

  ### See the form for creating restaurant
  get '/restaurants/new', to: 'restaurants#new'

  ### See one restaurant
  get '/restaurants/:id', to: 'restaurants#show', as: 'show_restaurant'

  ### Process the form for creating restaurant
  post '/restaurants', to: 'restaurants#create'

  ### See the form for updating one restaurant
  get '/restaurants/:id/edit', to: 'restaurants#edit'

  ### Process the form for updating one restaurant
  patch '/restaurants/:id', to: 'restaurants#update', as: 'restaurant'

  ### Delete one restaurant
  delete '/restaurants/:id', to: 'restaurants#destroy', as: 'destroy_restaurant'
end
