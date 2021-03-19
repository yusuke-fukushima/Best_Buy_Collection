class AddItemUrlToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :item_url, :text
  end
end
