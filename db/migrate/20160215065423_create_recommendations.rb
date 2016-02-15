class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.references :employee, index: true, foreign_key: true
      t.string :referral_name
      t.string :phone_number
      t.string :email
      t.string :position_of_interest

      t.timestamps null: false
    end
  end
end
