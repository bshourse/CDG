class AddColumnPriceToDishes < ActiveRecord::Migration[6.0]
  def change
    add_column :dishes, :price, :decimal
  end
end
