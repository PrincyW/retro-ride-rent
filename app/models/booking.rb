class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user
  validates :date_begin, presence: true
  validates :date_end, presence: true
end
