class CreateFactquotes < ActiveRecord::Migration[5.2]
  
  def change
       
    create_table :factquotes do |t|
      t.datetime :creationDate
      t.string :companyName             
      t.string :email                     
      t.integer :numberElevators    

    end
  end
end
