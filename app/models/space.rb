class Space < ApplicationRecord
  has_attachments :photos, maximum: 5
  belongs_to :user
  has_many :bookings

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :name, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 5 }
  validates :max_capacity, presence: true, numericality: { only_integer: true }
  validates :price_per_day, presence: true, numericality: { only_integer: true }
  validates :user_id, presence: true
  validates :category, presence: true, inclusion: { in: ['work', 'creative', 'event', 'retail'] }
end
