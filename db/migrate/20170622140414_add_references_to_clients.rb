class AddReferencesToClients < ActiveRecord::Migration[5.1]
  def change
    add_reference :clients, :order, foreign_key: true
  end
end
