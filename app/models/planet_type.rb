class PlanetType < ApplicationRecord
  has_many :planets

  validates :name, presence: true, uniqueness: true
end
