class CreateFactcontact < ActiveRecord::Migration[5.2]

  def change

    create_table :factcontact do |t|
      t.date :creationDate
      t.string :companyName              
      t.string :email                     
      t.string :projectName   
      
    end
  end
end
