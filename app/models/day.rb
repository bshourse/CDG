class Day < ApplicationRecord
  has_many :courses
  has_many :dishes, through: :courses
end
