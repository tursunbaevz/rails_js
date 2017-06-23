Rails.application.routes.draw do
  	
  	resources :products

	resources :clients

	resources :orders
  	
  	root 'clients#index'

	get 'test', to: 'tasks#test'

 
end
