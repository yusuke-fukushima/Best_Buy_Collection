class RemoveThirdPlaceUrlFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :third_place_url, :text
  end
end
