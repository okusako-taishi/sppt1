class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes
  has_many :liked_users, through: :likes, source: :user

  validates :title, presence: true
  validates :link, presence: true

  def self.search(search)
    return Post.all unless search
    Post.where('title LIKE(?)', "%#{search}%")
  end
end
