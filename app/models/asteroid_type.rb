class AsteroidType < ApplicationRecord
  has_many :asteroids

  validates :type, presence: true, uniqueness: true
end
