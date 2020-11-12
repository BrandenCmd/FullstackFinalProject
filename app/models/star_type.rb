class StarType < ApplicationRecord
  has_many :stars

  validates :name, presence: true, uniqueness: true
end
