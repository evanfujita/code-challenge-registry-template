Rails.application.routes.draw do
  resources :registry_coordinators
  resources :registry_participants
  resources :participants
  resources :coordinators
  resources :registries
  
  get 'home', to: 'coordinators#home'
  root to: 'coordinators#login'
end
