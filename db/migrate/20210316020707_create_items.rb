class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.integer :user_id
      t.text :first_place_url
      t.text :second_place_url
      t.text :third_place_url
      t.text :forth_place_url
      t.text :fifth_place_url

      t.timestamps
    end
  end
end
