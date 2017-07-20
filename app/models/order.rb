class Order < ApplicationRecord
	has_many :order_products, dependent: :destroy
	belongs_to :client

	accepts_nested_attributes_for :order_products, allow_destroy: true
end
