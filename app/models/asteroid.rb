class Asteroid < ApplicationRecord
  belongs_to :asteroid_type

  validates :name, :description, :cost, presence: true
  validates :name, uniqueness: true
end
