Rails.application.routes.draw do
  get 'principal/index'
  resources :forms 
  
  root 'principal#index'
end


