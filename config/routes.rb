Rails.application.routes.draw do
  resources :registry_coordinators
  resources :participants
  resources :coordinators
  resources :registries
  
  get 'home', to: 'coordinators#home'
  get 'registries/:id/add_coordinator', to: 'registry_coordinators#add_coordinator', :as => 'add_coordinator'
  # post 'registries/:id/add_coordinator', to: 'registries#link_coordinator'
  # get 'participants/:id/add_participant', to: 'registry_participants#new', :as => 'add_participant'
  # post 'participants/:id/add_participant', to: 'registry_participants#new'
  get 'registries/:id/add_participant', to: 'registry_participants#add_participant', :as => 'add_participant'
  post 'registries/:id/add_participant', to: 'registry_participants#link_participant'
  root to: 'coordinators#login'
  resources :registry_participants
end
