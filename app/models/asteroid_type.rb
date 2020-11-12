class AsteroidType < ApplicationRecord
  has_many :asteroids

  validates :name, presence: true, uniqueness: true
end
