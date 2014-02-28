Booking::Engine.routes.draw do

  scope  "/:page_id" do
    resources :services do
      resources :events
    end
  
    resources :entries
  end
  
  resources :schedules

  root :to => 'services#index'
  
end