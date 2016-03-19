class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employee_number
      t.references :department, index: true, foreign_key: true
      t.string :email
      t.string :phone_number
      t.integer :points

      t.timestamps null: false
    end
  end
end
