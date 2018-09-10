Rails.application.routes.draw do
  resources :users
  get 'principal/index'
  resources :forms 
  resources :objectives
  
  
  root 'principal#index'
end