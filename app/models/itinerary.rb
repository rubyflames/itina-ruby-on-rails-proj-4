class Itinerary < ApplicationRecord
  belongs_to :trip
  has_and_belongs_to_many :places
end
