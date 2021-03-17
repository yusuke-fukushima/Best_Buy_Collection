class AddPurchaseTimeToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :purchase_time, :date
  end
end
