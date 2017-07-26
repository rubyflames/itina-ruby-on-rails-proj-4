class User < ApplicationRecord
<<<<<<< HEAD
  # ↓ added manually
  has_many :trips  
=======
  has_many :Trip

  # has_many :trips
  # has_many :locations, through: :trips
>>>>>>> 4889905de938500d24e9cb26fffecede1ab62dd8
end
