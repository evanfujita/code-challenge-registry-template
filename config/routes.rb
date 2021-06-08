Rails.application.routes.draw do
  resources :registry_coordinators
  resources :registry_participants
  resources :participants
  resources :coordinators
  resources :registries
  
  get 'home', to: 'coordinators#home'
  get 'registries/:id/add_coordinator', to: 'registry_coordinators#add_coordinator', :as => 'add_coordinator'
  post 'registries/:id/add_coordinator', to: 'registry_coordinators#new'
  get 'participants/:id/add_participant', to: 'registry_participants#new', :as => 'add_participant'
  post 'participants/:id/add_participant', to: 'registry_participants#new'
  get 'registries/:id/add_participant', to: 'registry_participants#add_participant', :as => 'add_participants'
  post 'registries/:id/add_participant', to: 'registry_participants#add_participant'
  root to: 'coordinators#login'
end
