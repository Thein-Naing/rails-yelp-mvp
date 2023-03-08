class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.text :category, null: false
      t.integer :phone_nbumber, null: false

      t.timestamps
    end
  end
end
