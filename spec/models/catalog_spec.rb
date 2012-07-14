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

require 'spec_helper'

describe Catalog do
  pending "add some examples to (or delete) #{__FILE__}"
end
