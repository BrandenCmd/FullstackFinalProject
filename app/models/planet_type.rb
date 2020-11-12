class PlanetType < ApplicationRecord
  has_many :planets

  validates :type, presence: true, uniqueness: true
end
