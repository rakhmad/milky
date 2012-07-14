# == Schema Information
#
# Table name: products
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  buy_price  :decimal(, )
#  sell_price :decimal(, )
#  catalog_id :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Product < ActiveRecord::Base
  belongs_to :catalog
  attr_accessible :buy_price, :name, :sell_price
end
