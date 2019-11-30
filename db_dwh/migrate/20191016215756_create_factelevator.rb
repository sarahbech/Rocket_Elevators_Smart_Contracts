class CreateFactelevator < ActiveRecord::Migration[5.2]

  def change

    create_table :factelevator do |t|
      t.integer :serialNumber
      t.date :dateOfCommissioning
      t.integer :building_id
      t.integer :customer_id
      t.string :city             
      
    end
  end
end
