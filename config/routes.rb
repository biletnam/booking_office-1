Rails.application.routes.draw do
  resources :trains
  resources :routes
  resources :carriages
  resources :coupe_carriages, controller: 'carriages', type: 'CoupeCarriage'
  resources :economy_carriages, controller: 'carriages', type: 'EconomyCarriage'
  resources :soft_seats_carriages, controller: 'carriages', type: 'SoftSeatsCarriage'
  resources :luxe_carriages, controller: 'carriages', type: 'LuxeCarriage'
  
  get 'welcome/index'

  resources :railway_stations
  
  root "welcome#index"
end
