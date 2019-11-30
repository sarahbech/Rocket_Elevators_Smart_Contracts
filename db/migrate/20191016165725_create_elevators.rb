class CreateElevators < ActiveRecord::Migration[5.2]
  def change
    create_table :elevators do |t|
      t.integer :serialNumber
      t.string :qualityRange
      t.string :kindOfBuild
      t.string :status
      t.date :dateOfCommissioning
      t.date :dateOfLastInspection
      t.text :inspectionCertificate
      t.text :information
      t.text :notes
      t.timestamps
    end
  end
end
