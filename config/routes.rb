Rails.application.routes.draw do
  resources :trains
  resources :routes
  resources :carriages
  
  get 'welcome/index'

  resources :railway_stations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "welcome#index"
end
