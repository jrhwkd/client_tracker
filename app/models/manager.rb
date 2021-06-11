class Manager < ApplicationRecord
  belongs_to :group
  belongs_to :company
  has_many :clients

  validates :name, presence: true
end
