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
require 'rails_helper'

RSpec.describe Product, type: :model do
  
  context "validations" do
    it { is_expected.to validate_presence_of(:category) }
    it { is_expected.to validate_presence_of(:subcategory) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:container) }
    it { is_expected.to validate_presence_of(:base_margin) }
    it { is_expected.to validate_presence_of(:unit_price) }
    it { is_expected.to validate_inclusion_of(:category).in_array(Product::CATEGORY_TYPES) }
    it { is_expected.to validate_inclusion_of(:container).in_array(Product::CONTAINER_TYPES) }
    it { is_expected.to validate_numericality_of(:base_margin).is_greater_than_or_equal_to(0).is_less_than_or_equal_to(1) }
  end
end
