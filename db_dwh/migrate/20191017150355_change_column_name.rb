class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :factquotes, :creationDate, :creation_date
    rename_column :factquotes, :companyName, :companyName
    rename_column :factquotes, :numberElevators, :number_elevators

    rename_column :factcontact, :projectName, :project_name
    rename_column :factcontact, :companyName, :companyName
    rename_column :factcontact, :creationDate, :creation_date

    rename_column :factelevator, :serialNumber, :serial_number
    rename_column :factelevator, :dateOfCommissioning, :date_of_commissioning
    #rename_column :factelevator, :buildingId, :building_id
    #rename_column :factelevator, :customerId, :customer_id

    rename_column :dimcustomer, :creationDate, :creation_date
    rename_column :dimcustomer, :compagnyName, :companyName
    rename_column :dimcustomer, :contactFullName, :contact_fullname
    rename_column :dimcustomer, :contactEmail, :contact_email
    rename_column :dimcustomer, :numberElevators, :number_elevators


    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
