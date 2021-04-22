class Spot < ApplicationRecord
<<<<<<< HEAD
  has_many :users
  has_one_attached :image

  with_options presence: true do
    validates :spot_name
    validates :address
    validates :latitude
    validates :longitude
=======

  with_options presence: true do
    validates :spot_name
    validates :latitude
    validates :longitude
    validates :text
>>>>>>> c72c5615f5dceb8d51c9a71379135b2624f20e23
  end

  geocoded_by :address
  before_validation :geocode
end
