class AddPointsToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :points, :integer
  end
end
