class DaySerializer < ActiveModel::Serializer
  attributes :id, :weekday
  has_many :order_items
end
