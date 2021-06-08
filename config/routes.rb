Rails.application.routes.draw do
  resources :registry_coordinators
  resources :registry_participants
  resources :participants
  resources :coordinators
  resources :registries
  
  root to: 'coordinators#home'
end
