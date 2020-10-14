class AddUserRefToOrderItems < ActiveRecord::Migration[6.0]
  def change
    add_reference :order_items, :user, foreign_key: true
  end
end
