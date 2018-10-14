class RemoveNumberOfApartmentsFromApartmentComplexes < ActiveRecord::Migration[5.1]
  def change
    remove_column :apartment_complexes, :number_of_apartments, :int
  end
end
