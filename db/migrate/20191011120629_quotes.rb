ActiveRecord::Base.establish_connection "#{Rails.env}".to_sym
class Quotes < ActiveRecord::Migration[5.2]
  def change
      create_table :quotes do |t|

        t.string :fullName             
        t.string :company              
        t.string :email               
        t.string :phone                 
        t.string :postalCode           
        t.string :projectName         
        t.text :projectDescription    
        t.text :message               
  
        t.string :department           
        t.integer :numberApartments    
        t.integer :numberFloors        
        t.integer :numberBasements     
        t.integer :parkingSpots       
        t.integer :cages              
        t.integer :distinctsBusiness   
        t.integer :tenantsBusiness     
        t.integer :maxOccupants        
        t.integer :dailyActivities     
        t.string :range                 
        t.integer :numberElevators    
        t.integer :servicePrice        
        t.integer :installationPrice   
        t.integer :totalPrice        
        t.timestamps
      end
  end
end
