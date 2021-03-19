class RemoveFifthPlaceUrlFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :fifth_place_url, :text
  end
end
