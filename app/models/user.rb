class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  before_create :set_admin
  has_many :order_items

  private def set_admin
    self.admin = true unless User.exists?
  end

end
