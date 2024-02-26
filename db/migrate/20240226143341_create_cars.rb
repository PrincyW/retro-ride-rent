class CreateCars < ActiveRecord::Migration[7.1]
  def change
    create_table :cars do |t|
      t.string :brand
      t.text :description
      t.string :photo_url
      t.string :city
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
