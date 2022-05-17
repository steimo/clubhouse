class Post < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :post, presence: true, length: { maximum: 140 }
end
