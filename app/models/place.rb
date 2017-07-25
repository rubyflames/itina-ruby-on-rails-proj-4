class Place < ApplicationRecord
  has_and_belongs_to_many :itineraries
  has_and_belongs_to_many :categories
end
