Rails.application.routes.draw do
  devise_for :users
  
  resources :tickets
  #resources :users

  resource :search, only: [:show, :create]
  
  namespace :admin do
    resources :routes
    resources :carriages
    resources :coupe_carriages, controller: 'carriages', type: 'CoupeCarriage'
    resources :economy_carriages, controller: 'carriages', type: 'EconomyCarriage'
    resources :soft_seats_carriages, controller: 'carriages', type: 'SoftSeatsCarriage'
    resources :luxe_carriages, controller: 'carriages', type: 'LuxeCarriage'
    
    resources :railway_stations do
      patch :update_position, on: :member
      patch :update_arrival, on: :member
      patch :update_departure, on: :member
    end
    
    resources :trains do
      resources :carriages, shallow: true
    end
    resources :tickets
  end
  
  get 'welcome/index'
  root "welcome#index"
end
