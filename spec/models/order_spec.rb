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
require 'rails_helper'

RSpec.describe Order, type: :model do
  context 'validations' do
    it { is_expected.to validate_presence_of(:order_date) }
    it { is_expected.to validate_presence_of(:quantity) }
    it { is_expected.to validate_presence_of(:sales) }
    it { is_expected.to validate_presence_of(:discount) }
    it { is_expected.to validate_presence_of(:profit) }
    it { is_expected.to validate_presence_of(:shipping_mode) }
    it { is_expected.to validate_presence_of(:shipping_cost) }
    it { is_expected.to validate_presence_of(:shipping_date) }
    it { is_expected.to validate_presence_of(:priority) }
    it { is_expected.to validate_numericality_of(:discount).is_greater_than_or_equal_to(0).is_less_than_or_equal_to(1) }
    it { is_expected.to validate_inclusion_of(:shipping_mode).in_array(Order::SHIPMENT_MODE_TYPES) }
  end
end
