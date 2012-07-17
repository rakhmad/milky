# == Schema Information
#
# Table name: catalogs
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  begin      :date
#  end        :date
#  status     :boolean
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Catalog < ActiveRecord::Base
  attr_accessible :begin, :end, :name, :status
  has_many :products

  def to_s
    return self.name
  end
end
