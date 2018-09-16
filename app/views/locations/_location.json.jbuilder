json.extract! location, :id, :agencyID, :state, :zipCode, :city, :created_at, :updated_at
json.url location_url(location, format: :json)
