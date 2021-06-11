class Client < ApplicationRecord
  belongs_to :clienttype
  belongs_to :manager
end
