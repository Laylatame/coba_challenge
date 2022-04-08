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
end
