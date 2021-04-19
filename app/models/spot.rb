class Spot < ApplicationRecord

  with_options presence: true do
    validates :spot_name
    validates :latitude
    validates :longitude
    validates :text
  end

  geocoded_by :address
  before_validation :geocode
end
