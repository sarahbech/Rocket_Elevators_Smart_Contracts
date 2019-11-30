class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :fullName
      t.string :companyName
      t.string :email
      t.string :phoneNumber
      t.string :projectName
      t.string :projectDescription
      t.string :department
      t.text :message
      t.binary :uploadFile
      t.timestamps
    end
  end
end
