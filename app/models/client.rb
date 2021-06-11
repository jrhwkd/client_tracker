class Client < ApplicationRecord
  belongs_to :client_type
  belongs_to :manager
end
