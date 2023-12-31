class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :type
      t.string :street
      t.string :county
      t.string :city
      t.string :postal_code
      t.references :parcel_order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
