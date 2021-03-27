class Item < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :item_comments, dependent: :destroy

  attachment :item_image
end
