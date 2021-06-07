Rails.application.routes.draw do
  resources :registry_participants
  resources :participants
  resources :coordinators
  resources :registries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
