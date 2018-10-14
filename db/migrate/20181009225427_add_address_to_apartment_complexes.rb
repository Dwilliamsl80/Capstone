class AddAddressToApartmentComplexes < ActiveRecord::Migration[5.1]
  def change
    add_column :apartment_complexes, :address, :string
  end
end
