class Province < ApplicationRecord
  validates :name, :code, presence: true
end
