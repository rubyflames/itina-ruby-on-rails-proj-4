class Trip < ApplicationRecord

  belongs_to :user

  # ↓ added manually
  has_many :itineraries

end
