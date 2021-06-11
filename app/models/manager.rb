class Manager < ApplicationRecord
  belongs_to :group
  belongs_to :company

  validates :name, presence: true
end
