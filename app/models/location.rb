class Location < ApplicationRecord
	has_many :agency_to_locations
	has_many :agencies, through: :agency_to_locations
	has_many :apartment_complexes
end
