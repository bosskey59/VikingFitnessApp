Rails.application.routes.draw do
  resources :valhallas
  resources :diets
  resources :exercises
  resources :vikings
  resources :sessions
  resources :viking_exercises, only:[:create]
  delete '/viking_exercises', to: 'viking_exercises#destroy', as: 'destroy_viking_exercises'
  delete '/sessions', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
