Rails.application.routes.draw do
  resources :users
  get 'principal/index'
  resources :forms 
  
  root 'principal#index'
end


