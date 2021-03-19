class RemoveForthPlaceUrlFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :forth_place_url, :text
  end
end
