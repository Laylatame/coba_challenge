# == Schema Information
#
# Table name: customers
#
#  id         :bigint           not null, primary key
#  first_name :string
#  last_name  :string
#  province   :string
#  region     :string
#  segment    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Customer, type: :model do

  context "validations" do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:province) }
    it { is_expected.to validate_presence_of(:region) }
    it { is_expected.to validate_presence_of(:segment) }
    it { is_expected.to validate_inclusion_of(:segment).in_array(Customer::SEGMENT_TYPES) }
  end

  context "methods" do
    before(:each) do
      @customer     = create(:customer)
    end

    describe "#name" do
      it { expect(@customer.name).to eql("#{@customer.first_name} #{@customer.last_name}") }
    end
  end
end
