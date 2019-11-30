class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.string :status
      t.text :information
      t.text :notes
      t.integer :numberFloors
      t.string :kindOfBuild
      t.timestamps
    end
  end
end
