class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.string :fullNameAdmin
      t.string :emailAdmin
      t.string :phoneAdmin
      t.string :fullNameTechnicalContact
      t.string :emailTechnicalContact
      t.string :phoneTechnicalContact
      t.timestamps
    end
  end
end
