Rails.application.routes.draw do
  resources :objective do
    resources :key_result
  end
  resources :users
  get 'principal/index'
  resources :forms 
  
  
  root 'principal#index'
end