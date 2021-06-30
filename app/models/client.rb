class Client < ApplicationRecord
  belongs_to :sector
  belongs_to :manager

  has_many :communications
end
