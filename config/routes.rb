Rails.application.routes.draw do
  resources :tasks
  resources :orders
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root 'home#home', as: :home
end
