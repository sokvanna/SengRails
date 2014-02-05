# This migration comes from shopeng (originally 20140131042315)
class CreateShopengCategories < ActiveRecord::Migration
  def change
    create_table :shopeng_categories do |t|
      t.string :title

      t.timestamps
    end
  end
end
