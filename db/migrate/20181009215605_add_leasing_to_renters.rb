class AddLeasingToRenters < ActiveRecord::Migration[5.1]
  def change
    add_column :renters, :leasing, :boolean
  end
end
