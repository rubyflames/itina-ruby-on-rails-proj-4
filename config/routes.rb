Rails.application.routes.draw do

  resources :categories
  resources :places
  resources :itineraries

  resources :trips
  resources :users

  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html ....
end
