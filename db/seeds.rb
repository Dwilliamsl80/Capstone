User.create!([
  {email: "tenant1@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "tenant2@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "tenant3@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "renter1@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "renter2@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "renter3@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "renter4@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "renter5@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "renter6@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "renter7@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "renter8@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "renter9@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "renter10@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "renter11@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "renter12@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "renter13@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "renter14@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "renter15@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},
  {email: "renter16@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: false},  
  {email: "admin@test.com", password: "password", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: "", last_sign_in_ip: "", admin: true}
])

Tenant.create!([
  {user_id: 1, first_name: "David", last_name: "Burn"},
  {user_id: 2, first_name: "Christina", last_name: "Ackerman"},
  {user_id: 3, first_name: "Yulanda", last_name: "Osborn"}
])

Agency.create!([
  {agency_name: "Downtown Apartment Company"},
  {agency_name: " Fulton Grace Realty"}
])

Location.create!([
  {state: "IL", zip_code: 60606, city: "Chicago"},
  {state: "IL", zip_code: 60657, city: "Chicago"},
  {state: "MO", zip_code: 63132, city: "St. Louis"}
])

AgencyToLocation.create!([
  {agency_id: 1, location_id: 1},
  {agency_id: 2, location_id: 2},
  {agency_id: 2, location_id: 3}
])

ApartmentComplex.create!([
  {tenant_id: 1, location_id: 1, apartment_complex_name: "Downton Complex", address: "180 N Wacker Dr"},
  {tenant_id: 1, location_id: 1, apartment_complex_name: "Other Downton Complex", address: "181 N Wacker Dr"},
  {tenant_id: 2, location_id: 2, apartment_complex_name: "Chicago Grace Realty Complex", address: "2901 N Halsted St"},
  {tenant_id: 3, location_id: 3, apartment_complex_name: "St. Louis Grace Realty Complex", address: "633 N McKnight Rd"}
])

Apartment.create!([
  {apartment_complex_id: 1, apartment_number: 100, number_of_rooms: 4, square_footage: 200, number_of_bedrooms: 2, number_of_bathrooms: 2, price: "500.0"},
  {apartment_complex_id: 1, apartment_number: 101, number_of_rooms: 2, square_footage: 100, number_of_bedrooms: 1, number_of_bathrooms: 1, price: "200.0"},
  {apartment_complex_id: 2, apartment_number: 100, number_of_rooms: 4, square_footage: 200, number_of_bedrooms: 2, number_of_bathrooms: 2, price: "450.0"},
  {apartment_complex_id: 2, apartment_number: 101, number_of_rooms: 2, square_footage: 100, number_of_bedrooms: 1, number_of_bathrooms: 1, price: "150.0"},
  {apartment_complex_id: 3, apartment_number: 100, number_of_rooms: 4, square_footage: 200, number_of_bedrooms: 2, number_of_bathrooms: 2, price: "500.0"},
  {apartment_complex_id: 3, apartment_number: 101, number_of_rooms: 2, square_footage: 100, number_of_bedrooms: 1, number_of_bathrooms: 1, price: "200.0"},
  {apartment_complex_id: 3, apartment_number: 102, number_of_rooms: 4, square_footage: 200, number_of_bedrooms: 2, number_of_bathrooms: 2, price: "450.0"},
  {apartment_complex_id: 4, apartment_number: 100, number_of_rooms: 2, square_footage: 100, number_of_bedrooms: 1, number_of_bathrooms: 1, price: "150.0"},
  {apartment_complex_id: 4, apartment_number: 101, number_of_rooms: 4, square_footage: 200, number_of_bedrooms: 2, number_of_bathrooms: 2, price: "500.0"},
  {apartment_complex_id: 4, apartment_number: 102, number_of_rooms: 2, square_footage: 100, number_of_bedrooms: 1, number_of_bathrooms: 1, price: "200.0"},
  {apartment_complex_id: 3, apartment_number: 103, number_of_rooms: 4, square_footage: 200, number_of_bedrooms: 2, number_of_bathrooms: 2, price: "450.0"},
  {apartment_complex_id: 3, apartment_number: 104, number_of_rooms: 2, square_footage: 100, number_of_bedrooms: 1, number_of_bathrooms: 1, price: "150.0"},
  {apartment_complex_id: 2, apartment_number: 102, number_of_rooms: 4, square_footage: 200, number_of_bedrooms: 2, number_of_bathrooms: 2, price: "500.0"},
  {apartment_complex_id: 2, apartment_number: 103, number_of_rooms: 2, square_footage: 100, number_of_bedrooms: 1, number_of_bathrooms: 1, price: "200.0"},
  {apartment_complex_id: 1, apartment_number: 102, number_of_rooms: 4, square_footage: 200, number_of_bedrooms: 2, number_of_bathrooms: 2, price: "450.0"},
  {apartment_complex_id: 1, apartment_number: 103, number_of_rooms: 2, square_footage: 100, number_of_bedrooms: 1, number_of_bathrooms: 1, price: "150.0"}

])

Renter.create!([
  {apartment_id: 1, user_id: 4, first_name: "Timothy", last_name: "Kelley", contract_start: "2018-10-09 17:13:00", contract_end: "2019-03-30 17:13:00", leasing: true},
  {apartment_id: 1, user_id: 5, first_name: "Doris", last_name: "Griffin", contract_start: "2018-07-02 17:14:00", contract_end: "2018-10-08 17:15:00", leasing: false},
  {apartment_id: 2, user_id: 6, first_name: "Lana", last_name: "Dunn", contract_start: "2018-10-09 17:13:00", contract_end: "2019-03-30 17:13:00", leasing: true},
  {apartment_id: 3, user_id: 7, first_name: "Henry", last_name: "Hayes", contract_start: "2018-07-02 17:14:00", contract_end: "2018-10-08 17:15:00", leasing: true},
  {apartment_id: 4, user_id: 8, first_name: "Alan", last_name: "Carroll", contract_start: "2018-10-09 17:13:00", contract_end: "2019-03-30 17:13:00", leasing: true},
  {apartment_id: 5, user_id: 9, first_name: "Jeanette", last_name: "Lucas", contract_start: "2018-10-09 17:13:00", contract_end: "2019-03-30 17:13:00", leasing: true},
  {apartment_id: 6, user_id: 10, first_name: "Grace", last_name: "Hoffman", contract_start: "2018-07-02 17:14:00", contract_end: "2018-10-08 17:15:00", leasing: true},
  {apartment_id: 7, user_id: 11, first_name: "Mario", last_name: "Summers", contract_start: "2018-10-09 17:13:00", contract_end: "2019-03-30 17:13:00", leasing: true},
  {apartment_id: 8, user_id: 12, first_name: "Sabrina", last_name: "Lee", contract_start: "2018-07-02 17:14:00", contract_end: "2018-10-08 17:15:00", leasing: false},
  {apartment_id: 9, user_id: 13, first_name: "Sheldon", last_name: "Lane", contract_start: "2018-10-09 17:13:00", contract_end: "2019-03-30 17:13:00", leasing: true},
  {apartment_id: 10, user_id: 14, first_name: "Henry", last_name: "Dunn", contract_start: "2018-07-02 17:14:00", contract_end: "2018-10-08 17:15:00", leasing: true},
  {apartment_id: 11, user_id: 15, first_name: "Alan", last_name: "Dunn", contract_start: "2018-10-09 17:13:00", contract_end: "2019-03-30 17:13:00", leasing: true},
  {apartment_id: 12, user_id: 16, first_name: "Jeanette", last_name: "Carroll", contract_start: "2018-10-09 17:13:00", contract_end: "2019-03-30 17:13:00", leasing: true},
  {apartment_id: 13, user_id: 17, first_name: "Grace", last_name: "Carroll", contract_start: "2018-07-02 17:14:00", contract_end: "2018-10-08 17:15:00", leasing: true},
  {apartment_id: 14, user_id: 18, first_name: "Mario", last_name: "Summers", contract_start: "2018-10-09 17:13:00", contract_end: "2019-03-30 17:13:00", leasing: true},
  {apartment_id: 15, user_id: 19, first_name: "Sabrina", last_name: "Hoffman", contract_start: "2018-07-02 17:14:00", contract_end: "2018-10-08 17:15:00", leasing: false}
])

Rating.create!([
{user1_id: 1, user2_id: 4, rating: 5, description: "Great"},
{user1_id: 1, user2_id: 5, rating: 4, description: "Decent"},
{user1_id: 2, user2_id: 6, rating: 2, description: "Mediocre at best."},
{user1_id: 2, user2_id: 7, rating: 1, description: "Noisy and late on payments."},
{user1_id: 4, user2_id: 1, rating: 5, description: "Great"},
{user1_id: 5, user2_id: 1, rating: 5, description: "Great"},
])

