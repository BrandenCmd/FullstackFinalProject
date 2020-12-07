class Order < ApplicationRecord
  belongs_to :user

  serialize :item, Array
  validates :total, :sub_total, :status, presence: true
end
