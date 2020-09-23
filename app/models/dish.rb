class Dish < ApplicationRecord
  has_many :courses
  has_many :days, through: :courses
end
