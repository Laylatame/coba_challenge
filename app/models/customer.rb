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
class Customer < ApplicationRecord

  SEGMENT_TYPES = ['Consumer', 'Corporate', 'Home Office', 'Small Business']

  validates :first_name, :last_name, :province, :region, :segment, presence: true
  validates :segment, inclusion: { in: SEGMENT_TYPES }

  has_many :orders

  def name
    "#{first_name} #{last_name}"
  end
end
