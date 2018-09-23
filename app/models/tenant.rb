class Tenant < ApplicationRecord
	has_many :apartment_complexes
	belongs_to :user
end
