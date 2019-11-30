class CreateInterventions < ActiveRecord::Migration[5.2]
  def change
    create_table :interventions do |t|
        t. references :employee, foreign_key: {on_delete: :cascade, on_update: :cascade}
        t. references :customer, foreign_key: {on_delete: :cascade, on_update: :cascade}
        t. references :building, foreign_key: {on_delete: :cascade, on_update: :cascade}
        t. references :battery, foreign_key: {on_delete: :cascade, on_update: :cascade}
        t. references :column, foreign_key: {on_delete: :cascade, on_update: :cascade}
        t. references :elevator, foreign_key: {on_delete: :cascade, on_update: :cascade}
        t. date :start
        t. date :end
        t. string :results
        t. string :report
        t. string :status
        t.timestamps
    end
  end
end
