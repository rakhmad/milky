# == Schema Information
#
# Table name: order_items
#
#  id         :integer         not null, primary key
#  amount     :integer
#  order_id   :integer
#  product_id :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class OrderItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  attr_accessible :amount
end
