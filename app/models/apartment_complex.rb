class ApartmentComplex < ApplicationRecord
	has_many :apartments
	belongs_to :tenant
	belongs_to :location
end
