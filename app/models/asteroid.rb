class Asteroid < ApplicationRecord
  belongs_to :asteroid_type

  validates :name, :description, :cost, presence: true
  validates :name, uniqueness: true
  validates :cost, numericality: true
  has_one_attached :image
end
