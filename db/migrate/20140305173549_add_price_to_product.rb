class AddPriceToProduct < ActiveRecord::Migration
  def change
    add_column :products, :price, :decimal, :precision => 30, :scale => 10
  end
end
