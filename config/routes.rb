Rails.application.routes.draw do
  	

  

	resources :orders 
  	resources :products
  	resources :order_products
	resources :clients



  	
  	root 'orders#index'

	get 'test', to: 'tasks#test'

 
end
