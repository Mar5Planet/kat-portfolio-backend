Rails.application.routes.draw do
  resources :admins 
    post 'admins/login', to: 'admins#login'
  resources :images
  resources :contents
  
end
