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

  CATEGORY_TYPES = ['Furniture', 'Office Supplies', 'Technology']
  CONTAINER_TYPES = ['Wrap Bag', 'Small Box', 'Small Pack', 'Medium Box',
                     'Large Box', 'Jumbo Box', 'Jumbo Drum']

  validates :category, :subcategory, :name, :container, 
            :base_margin, :unit_price, presence: true
  validates :category, inclusion: { in: CATEGORY_TYPES }
  validates :container, inclusion: { in: CONTAINER_TYPES }
  validates :base_margin, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 1 }
end
