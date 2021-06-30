class Sector < ApplicationRecord
  has_many :clients

  validates :client_type, presence: true
end
