class Client < ApplicationRecord
  belongs_to :sector
  belongs_to :manager
end
