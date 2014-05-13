Rails.application.routes.draw do
  resources :coffeeshops, only: [:index]
  root to: 'coffeeshops#index'
end
