Rails.application.routes.draw do
  	

  

	resources :orders 
  	resources :products
  	resources :order_products
	resources :clients



  	
  	root 'order_products#index'

	get 'test', to: 'tasks#test'

 
end
