User.create!([
  {email: "tenant@test.com", encrypted_password: "$2a$11$sCQXqtsm2wUsmv5fWqr6yuGGWS/VAYWpXhjKew4.UEU89S0Rok60G", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "admin@test.com", encrypted_password: "$2a$11$q6q86QlV0Xqc5aA8qmMeQuKLhFzgZ07xGnakum6l.UfFCub/0e18S", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: true},
  {email: "renter@test.com", encrypted_password: "$2a$11$72o5NeeVmygS102dOAl/Cuv40CKL8LJc112ezEPtEVy5amSsxnW6m", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "renter2@test.com", encrypted_password: "$2a$11$wZmy5W5rYI334Qik62efQuXnsGgg1sZTxcKqj3M3VsHedKVGyG8cS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false}
])
Agency.create!([
  {agency_name: "Test Agency"}
])
AgencyToLocation.create!([
  {agency_id: 1, location_id: 1}
])
Apartment.create!([
  {apartment_complex_id: 1, apartment_number: 1, number_of_rooms: 4, square_footage: 200, number_of_bedrooms: 2, number_of_bathrooms: 2, price: "500.0"},
  {apartment_complex_id: 1, apartment_number: 2, number_of_rooms: 2, square_footage: 100, number_of_bedrooms: 1, number_of_bathrooms: 1, price: "200.0"}
])
ApartmentComplex.create!([
  {tenant_id: 1, location_id: 1, apartment_complex_name: "Complex 1", address: "745 N Gladstone Ave"}
])
Location.create!([
  {state: "IL", zip_code: 62812, city: "BENTON"}
])
Renter.create!([
  {apartment_id: 1, user_id: 6, first_name: "adamo", last_name: "bronzino", contract_start: "2018-10-09 17:13:00", contract_end: "2019-03-30 17:13:00", leasing: true},
  {apartment_id: 2, user_id: 7, first_name: "Brian", last_name: "Jefferson", contract_start: "2018-07-02 17:14:00", contract_end: "2018-10-08 17:15:00", leasing: false}
])
Tenant.create!([
  {user_id: 4, first_name: "dallas", last_name: "williams"}
])
