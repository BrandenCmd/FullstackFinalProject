class StarType < ApplicationRecord
  has_many :stars

  validates :type, presence: true, uniqueness: true
end
