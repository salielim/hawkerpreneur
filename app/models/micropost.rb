class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }  
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 60 }
  validates :content, presence: true, length: { maximum: 2000 }
end