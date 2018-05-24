class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :socks, dependent: :destroy
  validates :email, uniqueness: true, presence: true
  has_many :transactions, dependent: :destroy
  mount_uploader :photo, PhotoUploader
end
