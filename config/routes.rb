Rails.application.routes.draw do

  root "products#index"
  resources :products

  # get 'home/offline'
  # get 'offline', to: 'home#offline', as: :offline

end
