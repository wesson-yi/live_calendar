Rails.application.routes.draw do
  root "meetings#index"

  resources :meetings
  resources :part_times
  resources :pioneers
  resources :partners
end
