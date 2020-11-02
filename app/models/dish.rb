class Dish < ApplicationRecord
  has_many :courses
  has_many :days, through: :courses
  has_many :order_items
  validates :name, format: { with: /\A[a-zA-Z ]+\z/, message: "allows only letters"  }
  validates :course_name, inclusion: {within: ['first course', 'main course', 'drink'], message: "should be: first course / main course or drink "}
  validates :price,
            :length => { in: 1..5, message: "is too long. Range of available values: 0-999.9 "   },
            :numericality => { greater_than_or_equal_to: 0, message: "only positive numbers" }
  validates :price, numericality: true
  accepts_nested_attributes_for :courses
  mount_uploader :image, ImageUploader
end
