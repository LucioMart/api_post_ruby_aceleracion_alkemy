class Post < ApplicationRecord
  belongs_to :user
  #belongs_to :category

  validates :title, presence: true
  validates :content, presence: true
  validates :image_url, presence:true
  validates :category, presence: true
end
