class RemoveSecondPlaceUrlFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :second_place_url, :text
  end
end
