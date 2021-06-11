class Group < ApplicationRecord
  belongs_to :company
  has_many :managers

  validates :name, presence: true
  validates :company_id, presence: true
end
