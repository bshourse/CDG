class Dish < ApplicationRecord
  has_many :courses
  has_many :days, through: :courses
  has_many :order_items
  validates :course_name, presence: true
  accepts_nested_attributes_for :courses
  mount_uploader :image, ImageUploader
end
