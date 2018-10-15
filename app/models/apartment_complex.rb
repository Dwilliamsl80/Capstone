class ApartmentComplex < ApplicationRecord
  belongs_to :tenant
  belongs_to :location
  has_many :apartments
  has_many :renters, :through => :apartments
end
