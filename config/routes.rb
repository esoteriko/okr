Rails.application.routes.draw do
  resources :assignments
  resources :groups
  resources :group_types
  resources :key_results
  resources :kr_measures
  resources :tiempos
  resources :users
  get 'principal/index'
  resources :forms 
  resources :objectives
  
  
  root 'principal#index'
end