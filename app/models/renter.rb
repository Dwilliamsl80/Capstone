class Renter < ApplicationRecord
	belongs_to :apartment
	belongs_to :user

	#Validations
	validates :apartment_id, presence: true
end
