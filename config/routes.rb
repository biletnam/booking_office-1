Rails.application.routes.draw do
  devise_for :users
  
  resources :tickets
  #resources :users

  resource :search, only: [:show, :create]
  
  namespace :admin do
    resources :routes
    resources :railway_stations do
      member do
        patch :update_position
        patch :update_arrival
        patch :update_departure
      end
    end
    
    resources :trains do
      resources :carriages, shallow: true
      resources :coupe_carriages, controller: 'carriages', type: 'CoupeCarriage'
      resources :economy_carriages, controller: 'carriages', type: 'EconomyCarriage'
      resources :soft_seats_carriages, controller: 'carriages', type: 'SoftSeatsCarriage'
      resources :luxe_carriages, controller: 'carriages', type: 'LuxeCarriage'
    end
    
    resources :tickets
  end
  
  get 'welcome/index'
  root "welcome#index"
end
