class Tenant < ApplicationRecord
	has_many :apartments
	belongs_to :user
end
