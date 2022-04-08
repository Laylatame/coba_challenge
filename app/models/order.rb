# == Schema Information
#
# Table name: orders
#
#  id            :bigint           not null, primary key
#  order_date    :datetime
#  quantity      :integer
#  sales         :decimal(, )
#  discount      :decimal(, )
#  profit        :decimal(, )
#  shipping_mode :string
#  shipping_cost :decimal(, )
#  shipping_date :decimal(, )
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  priority      :enum             default("none")
#
class Order < ApplicationRecord
  SHIPMENT_MODE_TYPES = ['Regular Air', 'Express Air', 'Delivery Truck']

  validates :order_date, :quantity, :sales, :discount, :profit, :shipping_mode,
            :shipping_cost, :shipping_date, presence: true
  validates :discount, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }
  validates :shipping_mode, inclusion: { in: SHIPMENT_MODE_TYPES }
end
