Rails.application.routes.draw do


	resources :clients
  	root 'clients#index'
    get 'test', to: 'tasks#test'

 
end
