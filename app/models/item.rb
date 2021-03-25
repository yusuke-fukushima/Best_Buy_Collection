class Item < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  attachment :item_image
end
