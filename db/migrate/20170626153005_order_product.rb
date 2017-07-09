class OrderProduct < ActiveRecord::Migration[5.1]
  	def change
  	create_table :clients do |t|
  		t.string :name
  		t.integer :age

  		t.timestamps
  	end

  	create_table :products do |t|
  		t.string :title
  		t.decimal :price

  		t.timestamps	
  	end

  	create_table :orders do |t|
  		t.integer :client_id

  		t.timestamps	
  	end

  	create_table :order_products do |t|
  		t.integer :order_id
  		t.integer :product_id
  		t.integer :quantity	

  		t.timestamps
  	end
  end
end
