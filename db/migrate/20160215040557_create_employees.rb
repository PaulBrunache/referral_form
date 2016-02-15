class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :employee_name
      t.string :work_id
      t.string :department
      t.string :email
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
