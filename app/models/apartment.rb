class Apartment < ApplicationRecord
	belongs_to :apartment_complex
	has_many :renters
end
