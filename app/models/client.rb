class Client < ApplicationRecord
	belongs_to :order, optional: true
end
