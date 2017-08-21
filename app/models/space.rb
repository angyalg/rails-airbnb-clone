class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 20 }
  validates :max_capacity, presence: true, numericality: { only_integer: true }
  validates :price_per_day, presence: true, numericality: { only_integer: true }
end
