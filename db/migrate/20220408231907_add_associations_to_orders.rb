class AddAssociationsToOrders < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :customer, index: true
    add_reference :orders, :product, index: true
  end
end
