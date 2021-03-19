class RemoveFirstPlaceUrlFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :first_place_url, :text
  end
end
