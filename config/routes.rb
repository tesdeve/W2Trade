Rails.application.routes.draw do
  #root "products#index"
  root "products#new"
  resources :products 
end


