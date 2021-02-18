Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'restaurants#index'

  resources :restaurants do
    resources :reviews, only: [:index, :new, :create]
  end

  # delete '/reviews/:id'
  resources :reviews, only: [:destroy]
end
