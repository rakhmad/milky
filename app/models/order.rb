# == Schema Information
#
# Table name: orders
#
#  id            :integer         not null, primary key
#  name          :string(255)
#  order_date    :date
#  delivery_date :date
#  user_id       :integer
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

class Order < ActiveRecord::Base
  belongs_to :user
  has_many :order_items, :class_name => "OrderItem"
  attr_accessible :delivery_date, :name, :order_date
end
