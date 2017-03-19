Rails.application.routes.draw do
  resources :trains
  resources :routes
  resources :carriages
  resources :coupe_carriages, controller: 'carriages'
  resources :economy_carriages, controller: 'carriages'
  resources :soft_seats_carriages, controller: 'carriages'
  resources :luxe_carriages, controller: 'carriages'
  
  get 'welcome/index'

  resources :railway_stations
  
  root "welcome#index"
end
