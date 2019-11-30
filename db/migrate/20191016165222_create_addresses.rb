class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :addressType
      t.string :status
      t.string :entity
      t.string :address
      t.string :suitOrAppartment
      t.string :city
      t.string :postalcode
      t.string :country
      t.text :notes
      t.date :date
    end
  end
end
