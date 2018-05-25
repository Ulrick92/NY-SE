class Sock < ApplicationRecord
  belongs_to :user
  # has_one :transaction
  validates :title, presence: true
  validates :description, presence: true
  validates :size, presence: true
  validates :price_per_day, presence: true
  SIZES = (35..47).to_a
  validates :size, inclusion: { in: SIZES }
  validates :shipping_method, presence: true
  COLORS = %w(white black red blue green yellow purple orange pink gray marron)
  validates :color, inclusion: { in: COLORS }
  validates :cleanliness, inclusion: { in: [1, 2, 3, 4, 5] }, numericality: {only_integer: true}
  mount_uploader :photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode

  include PgSearch
  pg_search_scope :search_by_location,
    against: [ :location],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
