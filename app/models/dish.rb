class Dish < ApplicationRecord
  has_many :courses
  has_many :days, through: :courses
  has_many :order_items
end
