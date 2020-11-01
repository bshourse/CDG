class User < ApplicationRecord
  has_secure_password
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: "allows only letters"  }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  before_create :set_admin
  has_many :order_items

  private def set_admin
    self.admin = true unless User.exists?
  end

  def admin?
    self.admin == true
  end

end
