class User < ApplicationRecord
  has_many :spaces
  has_many :bookings

  validates :name, presence: true, length: { minimum: 5 }
  validates :email, presence: true, length: { minimum: 5 }
  validates :role, presence: true, inclusion: { in: ['guest', 'host'] }
end
