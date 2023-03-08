class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :content, null: false
      t.integer :rating, null: false
      t.references :restaurant, foreign_key: true, null: false
      t.timestamps
    end
  end
end
