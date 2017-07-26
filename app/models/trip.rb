class Trip < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user

  # ↓ added manually
  has_many :itineraries
=======
  has_many :Place
  belongs_to :User

  # belongs_to :user
  # has_and_belongs_to_many :locations
>>>>>>> 4889905de938500d24e9cb26fffecede1ab62dd8
end
