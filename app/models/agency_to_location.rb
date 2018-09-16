class AgencyToLocation < ApplicationRecord
	belongs_to :agency
	belongs_to :location
end