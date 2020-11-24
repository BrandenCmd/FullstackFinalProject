class Contact < ApplicationRecord
  validates :phone, :email, presence: true
end
