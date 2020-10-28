class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :dish_id, :order_id, :total, :user_id, :day_id

  belongs_to :day
end
