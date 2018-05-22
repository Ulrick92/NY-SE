class Sock < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :size, presence: true
  validates :price, presence: true
  validates :shipping_method, presence: true
  validates :color, presence: true
  validates :cleanliness, inclusion { in: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] }, numericality: {only_integer: true}
  mount_uploader :photo, PhotoUploader
end
