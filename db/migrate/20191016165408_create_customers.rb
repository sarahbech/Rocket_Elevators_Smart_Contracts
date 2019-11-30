class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :businessName
      t.string :contactFullName
      t.string :contactPhone
      t.string :contactEmail
      t.text :businessDescription
      t.string :serviceResponsableFullName
      t.string :serviceResponsablePhone
      t.string :serviceResponsableEmail
      t.timestamps
    end
  end
end
