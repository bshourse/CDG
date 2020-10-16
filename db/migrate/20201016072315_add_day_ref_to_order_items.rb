class AddDayRefToOrderItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :order_items, :day, foreign_key: true
  end
end
