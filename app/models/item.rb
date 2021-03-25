class Item < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :dependent
  attachment :item_image
end
