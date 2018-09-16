class Apartment < ApplicationRecord
	has_many :rooms
	belongs_to :tenant
	belongs_to :location
end
