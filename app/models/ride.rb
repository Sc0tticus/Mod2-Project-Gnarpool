class Ride < ApplicationRecord
  belongs_to :Rider
  belongs_to :Driver
end
