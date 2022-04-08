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

FactoryBot.define do
  factory :customer do
    sequence(:id) { |n| n }
    first_name { 'John' }
    last_name { 'Doe' }
    province { 'Nunavut' }
    region { 'Nunavut' }
    segment { 'Consumer' }
  end
end
