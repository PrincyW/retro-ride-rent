class Car < ApplicationRecord
  CITIES = ["Paris", "Lyon", "Lille", "Marseille"]
  belongs_to :user
  has_many :users, through: :bookings
  validates :brand, presence: true
  validates :photo_url, presence: true
  validates :price, presence: true
  validates :city, inclusion: CITIES
end
