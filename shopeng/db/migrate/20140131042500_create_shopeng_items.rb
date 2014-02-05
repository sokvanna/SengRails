class CreateShopengItems < ActiveRecord::Migration
  def change
    create_table :shopeng_items do |t|
      t.string :title
      t.text :text
      t.integer :category_id
      t.string :image

      t.timestamps
    end
  end
end
