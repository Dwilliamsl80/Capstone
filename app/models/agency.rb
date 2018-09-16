class Agency < ApplicationRecord
	has_many :agency_to_locations
	has_many :locations, through: :agency_to_locations
end
