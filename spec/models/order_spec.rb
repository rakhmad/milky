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

require 'spec_helper'

describe Order do
  pending "add some examples to (or delete) #{__FILE__}"
end
