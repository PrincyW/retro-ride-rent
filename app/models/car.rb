class Car < ApplicationRecord
  CITIES = ["Paris", "Lyon", "Lille", "Marseille"]
  belongs_to :user
  has_many :users, through: :bookings
  has_many :bookings, dependent: :destroy
  validates :brand, presence: true
  validates :photo_url, presence: true
  validates :price, presence: true
  validates :city, inclusion: CITIES

  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
