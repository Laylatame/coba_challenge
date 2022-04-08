class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.datetime :order_date
      t.integer  :quantity
      t.decimal  :sales
      t.decimal  :discount
      t.decimal  :profit
      t.string   :shipping_mode
      t.decimal  :shipping_cost
      t.decimal  :shipping_date
      t.integer  :priority, default: 0

      t.timestamps
    end
  end
end
