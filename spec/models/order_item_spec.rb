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

require 'spec_helper'

describe OrderItem do
  pending "add some examples to (or delete) #{__FILE__}"
end
