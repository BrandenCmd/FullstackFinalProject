class Star < ApplicationRecord
  belongs_to :star_type

  validates :name, :description, :cost, presence: true
  validates :name, uniqueness: true
  has_one_attached :image
end
