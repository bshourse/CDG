class CreateOrderItems < ActiveRecord::Migration[6.0]
  def change
    create_table :order_items do |t|
      t.belongs_to :dish
      t.belongs_to :order
      t.decimal :total
      t.timestamps
    end
  end
end
