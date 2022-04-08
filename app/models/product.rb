# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  category    :string
#  subcategory :string
#  name        :string
#  container   :string
#  base_margin :decimal(, )
#  unit_price  :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Product < ApplicationRecord
end
