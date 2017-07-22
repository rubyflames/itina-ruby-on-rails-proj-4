class Trip < ApplicationRecord
  has_many :Location
  belongs_to :user
end
