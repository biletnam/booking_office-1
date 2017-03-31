Rails.application.routes.draw do
  resources :trains do
    resources :carriages, shallow: true
  end
  
  resources :tickets
  resources :users
  resources :routes
  resources :carriages
  resources :coupe_carriages, controller: 'carriages', type: 'CoupeCarriage'
  resources :economy_carriages, controller: 'carriages', type: 'EconomyCarriage'
  resources :soft_seats_carriages, controller: 'carriages', type: 'SoftSeatsCarriage'
  resources :luxe_carriages, controller: 'carriages', type: 'LuxeCarriage'
  
  get 'welcome/index'

  resources :railway_stations do
    patch :update_position, on: :member
    patch :update_arrival, on: :member
    patch :update_departure, on: :member
  end
  
  resource :search, only: [:show, :create] 
  
  root "welcome#index"
end
