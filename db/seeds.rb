# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'bcrypt'
require 'faker'
require 'csv'

if !Employee.find_by_email("nicolas.genest@codeboxx.biz")
    Employee.create(last_name: 'Genest', first_name: 'Nicolas', title: 'Comm Rep', email: 'nicolas.genest@codeboxx.biz', password: '123456')
    Employee.create(last_name: 'Boutin', first_name: 'David', title: 'Engineer', email: 'david.boutin@codeboxx.biz', password: '123456')
    Employee.create(last_name: 'Gagnon', first_name: 'Remi', title: 'Engineer', email: 'remi.gagnon@codeboxx.biz', password: '123456')
    Employee.create(last_name: 'LeFrançois', first_name: 'Mathieu', title: 'Engineer', email: 'mathieu.lefrancois@codeboxx.biz', password: '123456')
    Employee.create(last_name: 'Lortie', first_name: 'Mathieu', title: 'Engineer', email: 'mathieu.lortie@codeboxx.biz', password: '123456')
    Employee.create(last_name: 'Houde', first_name: 'Mathieu', title: 'Engineer', email: 'mathieu.houde@codeboxx.biz', password: '123456')
    Employee.create(last_name: 'Savoie', first_name: 'Serge', title: 'Engineer', email: 'serge.savoie@codeboxx.biz', password: '123456')
    Employee.create(last_name: 'Fortier', first_name: 'Nadya', title: 'Director', email: 'nadya.fortier@codeboxx.biz', password: '123456')
    Employee.create(last_name: 'Chantal', first_name: 'Martin', title: 'Engineer', email: 'martin.chantal@codeboxx.biz', password: '123456')
end

if !User.find_by_email("nicolas.genest@codeboxx.biz")
    User.create!(email: "nicolas.genest@codeboxx.biz", password: '123456', password_confirmation: "123456", admin: true)
    User.create!(email: "david.boutin@codeboxx.biz", password: '123456', password_confirmation: "123456", admin: true)
    User.create!(email: "remi.gagnon@codeboxx.biz", password: '123456', password_confirmation: "123456", admin: true)
    User.create!(email: "mathieu.lefrancois@codeboxx.biz", password: '123456', password_confirmation: "123456", admin: true)
    User.create!(email: "mathieu.lortie@codeboxx.biz", password: '123456', password_confirmation: "123456", admin: true)
    User.create!(email: "mathieu.houde@codeboxx.biz", password: '123456', password_confirmation: "123456", admin: true)
    User.create!(email: "serge.savoie@codeboxx.biz", password: '123456', password_confirmation: "123456", admin: true)
    User.create!(email: "nadya.fortier@codeboxx.biz", password: '123456', password_confirmation: "123456", admin: true)
    User.create!(email: "martin.chantal@codeboxx.biz", password: '123456', password_confirmation: "123456", admin: true)
end

100.times do
    User.create!(       
        email: Faker::Internet.email,
        encrypted_password: BCrypt::Password.create(Faker::Internet.password)
    )
end

50.times do
    Quote.create!(        
        fullName: Faker::Name.name.delete("\'"),
        company: Faker::Company.name.delete("\'"),
        email: Faker::Internet.email,
        phone: Faker::PhoneNumber.phone_number_with_country_code,
        postalCode: Faker::Address.zip_code,
        projectName: Faker::Name.name.delete("\'"),
        projectDescription: Faker::Lorem.paragraph,
        message: Faker::Lorem.sentences,
        department: Faker::Team.state,
        numberApartments: Faker::Number.between(from: 1, to: 100),
        numberFloors: Faker::Number.between(from: 1, to: 20),
        numberBasements: Faker::Number.between(from: 1, to: 8),
        parkingSpots: Faker::Number.between(from: 20, to: 1000),
        cages: Faker::Number.between(from: 1, to: 20),
        distinctsBusiness: Faker::Number.between(from: 1, to: 25),
        tenantsBusiness: Faker::Number.between(from: 1, to: 14),
        maxOccupants: Faker::Number.between(from: 100, to: 1100),
        dailyActivities: Faker::Number.between(from: 1, to: 30),
        range: Faker::Name.name,
        numberElevators: Faker::Number.between(from: 1, to: 100),
        servicePrice: Faker::Number.between(from: 1000, to: 100000),
        installationPrice: Faker::Number.between(from: 1000, to: 100000),
        totalPrice: Faker::Number.between(from: 1000, to: 100000),
        created_at: Faker::Time.between(from: 35.months.ago, to: 3.weeks.ago),
        updated_at: Faker::Time.between(from: 2.weeks.ago, to: Time.now)
    )
end

50.times do
    Lead.create!(        
        fullName: Faker::Name.name.delete("\'"),
        companyName: Faker::Company.name.delete("\'"),
        email: Faker::Internet.email,
        phoneNumber: Faker::PhoneNumber.phone_number_with_country_code,      
        projectName: Faker::Name.name.delete("\'"),
        projectDescription: Faker::Lorem.paragraph,
        department: Faker::Team.state,
        message: Faker::Lorem.sentences,
        created_at: Faker::Time.between(from: 35.months.ago, to: 3.weeks.ago),
        updated_at: Faker::Time.between(from: 2.weeks.ago, to: Time.now)
    )
end

    csv_text = File.read(Rails.root.join('lib', 'seed', 'Address.csv'))
    csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
    csv.each do |row|   
        t = Address.new
        t.addressType = row['addressType']
        t.status = row['status']
        t.entity = row['entity']
        t.address = row['address']
        t.suitOrAppartment = row['suitOrAppartment']
        t.city = row['city']
        t.postalcode = row['postalcode']
        t.country = row['country']
        t.notes = row['notes']
        t.date = row['date']
        t.save!           
    end

    csv_text = File.read(Rails.root.join('lib', 'seed', 'CustomerData.csv'))
    csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
    csv.each do |row|   
        t = Customer.new
        t.businessName = row['businessName']
        t.contactFullName = row['contactFullName']
        t.contactPhone = row['contactPhone']
        t.contactEmail = row['contactEmail']
        t.businessDescription = row['businessDescription']
        t.serviceResponsableFullName = row['serviceResponsableFullName']
        t.serviceResponsablePhone = row['serviceResponsablePhone']
        t.serviceResponsableEmail = row['serviceResponsableEmail']
        t.created_at = row['created_at']
        t.updated_at = row['updated_at']
        t.address_id = row['address_id']
        t.user_id = row['user_id']
        t.save!   
    end   

    csv_text = File.read(Rails.root.join('lib', 'seed', 'BuildingsData.csv'))
    csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
    csv.each do |row|   
        t = Building.new
        t.fullNameAdmin = row['fullNameAdmin']
        t.emailAdmin = row['emailAdmin']
        t.phoneAdmin = row['phoneAdmin']
        t.fullNameTechnicalContact = row['fullNameTechnicalContact']
        t.emailTechnicalContact = row['emailTechnicalContact']
        t.phoneTechnicalContact = row['phoneTechnicalContact']
        t.created_at = row['created_at']
        t.updated_at = row['updated_at']
        t.customer_id = row['customer_id']
        t.address_id = row['address_id']
        t.save!
    end  
  
    csv_text = File.read(Rails.root.join('lib', 'seed', 'BuildingDetails.csv'))
    csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
    csv.each do |row| 
        t = BuildingDetail.new  
        t.building_id = row['building_id']
        t.key = row['key']
        t.value = row['value']
        t.created_at = row['created_at']
        t.updated_at = row['updated_at']
        t.save!
            
    end

    csv_text = File.read(Rails.root.join('lib', 'seed', 'Batteries.csv'))
    csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
    csv.each do |row|   
        t = Battery.new
        t.kindOfBuild = row['kindOfBuild']
        t.status = row['status']
        t.lastInspectionDate = row['lastInspectionDate']
        t.operationCertification = row['operationCertification']
        t.information = row['information']
        t.notes = row['notes'] 
        t.created_at = row['created_at']
        t.updated_at = row['updated_at']
        t.building_id = row['building_id']
        t.employee_id = row['employee_id']
        t.save!
            
    end

    csv_text = File.read(Rails.root.join('lib', 'seed', 'Columns.csv'))
    csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
    csv.each do |row|  
        t = Column.new
        t.status = row['status']
        t.information = row['information']
        t.notes = row['notes']
        t.numberFloors = row['numberFloors'] 
        t.kindOfBuild = row['kindOfBuild']
        t.created_at = row['created_at']
        t.updated_at = row['updated_at']
        t.battery_id = row['battery_id']
        t.save!
                
    end

    csv_text = File.read(Rails.root.join('lib', 'seed', 'Elevators.csv'))
    csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
    csv.each do |row|   
        t = Elevator.new
        t.serialNumber = row['serialNumber']
        t.qualityRange = row['qualityRange']
        t.kindOfBuild = row['kindOfBuild']
        t.status = row['status']
        t.dateOfCommissioning = row['dateOfCommissioning']
        t.dateOfLastInspection = row['dateOfLastInspection']
        t.inspectionCertificate = row['inspectionCertificate']
        t.information = row['information']
        t.notes = row['notes']
        t.created_at = row['created_at']
        t.updated_at = row['updated_at']
        t.column_id = row['column_id']
        t.save!
              
    end

    puts 'Populated'