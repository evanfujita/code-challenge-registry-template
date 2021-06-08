Rails.application.routes.draw do
  resources :registry_coordinators
  resources :registry_participants
  resources :participants
  resources :coordinators
  resources :registries
  
  get 'home', to: 'coordinators#home'
  get 'registries/:id/add_coordinator', to: 'registry_coordinators#new'
  post 'registries/:id/add_coordinator', to: 'registry_coordinators#new'
  root to: 'coordinators#login'
end
