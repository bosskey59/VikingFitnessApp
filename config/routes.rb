Rails.application.routes.draw do
  resources :valhallas
  resources :diets
  resources :exercises
  resources :vikings
  resources :sessions
  delete '/sessions', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
