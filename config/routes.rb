Rails.application.routes.draw do
  resources :meetings
  resources :part_times
  resources :pioneers
  resources :partners
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
