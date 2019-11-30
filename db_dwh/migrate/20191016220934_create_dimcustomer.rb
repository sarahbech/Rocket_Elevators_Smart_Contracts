class CreateDimcustomer < ActiveRecord::Migration[5.2]
  def change

    create_table :dimcustomer do |t|

      t.datetime :creationDate
      t.string :compagnyName
      t.string :contactFullName
      t.string :contactEmail
      t.integer :numberElevators 
      t.string :city           
      
    end
  end
end
