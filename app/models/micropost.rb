class Micropost < ApplicationRecord
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings
  default_scope -> { order(created_at: :desc) }  
  validates :user_id, presence: true
  validates :title, presence: true, length: { maximum: 60 }
  validates :content, presence: true, length: { maximum: 2000 }

  def all_tags=(names)
    self.tags = names.split(",").map do |name|
        Tag.where(name: name.strip).first_or_create!
    end
  end
  
  def all_tags
    self.tags.map(&:name).join(", ")
  end

  def self.tagged_with(name)
    Tag.find_by_name!(name).microposts
  end
end