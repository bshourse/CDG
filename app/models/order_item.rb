class OrderItem < ApplicationRecord
  belongs_to :dish
  belongs_to :order
  belongs_to :user
  belongs_to :day
  before_save :set_total

  def total

    if persisted?
      self[:total]
    else
      dish.price
    end
  end

  private def set_total
    self[:total] = total
  end

end
