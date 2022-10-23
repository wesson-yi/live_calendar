Rails.application.routes.draw do
  root "meetings#index"

  resources :meetings do
    post :appointment
  end
  resources :part_times
  resources :pioneers
  resources :partners
end
