class Star < ApplicationRecord
  belongs_to :star_type

  validates :name, :description, :cost, presence: true
  validates :name, uniqueness: true
end
