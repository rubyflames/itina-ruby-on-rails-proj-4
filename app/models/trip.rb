class Trip < ApplicationRecord
  has_many :Place
  belongs_to :User

  # belongs_to :user
  # has_and_belongs_to_many :locations
end
