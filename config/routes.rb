Rails.application.routes.draw do

  root "products#index"

  resources :products 

  #do 
  #  match '/scrape', to: 'products#scrape', via: :post, on: :collection
  #end
#
  # get 'home/offline'
  # get 'offline', to: 'home#offline', as: :offline

end
