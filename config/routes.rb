Booking::Engine.routes.draw do
  resources :services
  
  resources :schedules

  resources :events

  resources :entries

  root :to => 'services#index'
  
end