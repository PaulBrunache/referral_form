class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.references :employee, index: true, foreign_key: true
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :last_updated_by
      t.references :position, index: true, foreign_key: true
      t.references :JobStatus, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
