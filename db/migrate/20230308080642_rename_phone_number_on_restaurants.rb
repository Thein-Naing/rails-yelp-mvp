class RenamePhoneNumberOnRestaurants < ActiveRecord::Migration[7.0]
  def change
    rename_column :restaurants, :phone_nbumber, :phone_number
  end
end
