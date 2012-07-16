# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  username        :string(255)
#  name            :string(255)
#  email           :string(255)
#  address         :text
#  status          :boolean
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :address, :email, :name, :status, :username, :password, :password_confirmation
  has_secure_password
  
  has_many :orders
  
  validates :username, presence:true
  validates :email, presence:true, uniqueness:true
  validates :address, presence:true
  
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  def is_active?
    if self.status
      return "Aktif"
    else
      return "Tidak Aktif"
    end
  end

  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
