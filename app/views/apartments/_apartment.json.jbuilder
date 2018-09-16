json.extract! apartment, :id, :locationID, :apartmentName, :numberOfRooms, :created_at, :updated_at
json.url apartment_url(apartment, format: :json)
