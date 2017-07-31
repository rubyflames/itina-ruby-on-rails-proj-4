class User < ApplicationRecord

  # ↓ added manually     ↓ not tested.
  has_many :trips, dependent: :destroy


end
