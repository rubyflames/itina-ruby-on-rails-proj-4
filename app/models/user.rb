class User < ApplicationRecord
  # ↓ added manually
  has_many :trips  
end
