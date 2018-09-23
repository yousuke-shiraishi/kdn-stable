class Picture < ApplicationRecord
  validates :title, presence: true, length:{minimum: 1, maximum: 25}
  validates :content, presence: true, length:{minimum: 1, maximum: 140}
  validates :image, presence: true
  validates :price, presence: true, numericality:{only_integer: true}
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  belongs_to :user
  mount_uploader :image, ImageUploader
end
