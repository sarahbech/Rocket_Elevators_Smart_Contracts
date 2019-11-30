class CreateBatteries < ActiveRecord::Migration[5.2]
  def change
    create_table :batteries do |t|
      t.text :kindOfBuild
      t.string :status
      t.date :lastInspectionDate
      t.text :operationCertification
      t.text :information
      t.text :notes
      t.timestamps
    end
  end
end
