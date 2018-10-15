json.extract! apartment_complex, :id, :tenant_id, :location_id, :apartment_complex_name, :address, :created_at, :updated_at
json.url apartment_complex_url(apartment_complex, format: :json)
