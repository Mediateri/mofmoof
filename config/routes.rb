Rails.application.routes.draw do
  resources :statons
  resources :my_properties
  root 'my_properties#index'
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
