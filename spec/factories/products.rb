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
FactoryBot.define do
  factory :product do
    sequence(:id) { |n| n }
    category { 'Furniture' }
    subcategory { 'Appliances' }
    name { 'Test product' }
    container { 'Wrap Bag' }
    base_margin { 0.3 }
    unit_price { 3.45 }
  end
end
