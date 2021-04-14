Rails.application.routes.draw do
  get 'home/offline'
  root "products#index"
  resources :products

  #get 'offline', to: 'home#offline', as: :offline

end
