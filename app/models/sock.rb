class Sock < ApplicationRecord
  belongs_to :user
  # has_one :transaction
  validates :title, presence: true
  validates :description, presence: true
  validates :size, presence: true
  validates :price_per_day, presence: true
  validates :shipping_method, presence: true
  validates :color, presence: true
  validates :cleanliness, inclusion: { in: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] }, numericality: {only_integer: true}
  mount_uploader :photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode
end
