class AddStatusToRecommendations < ActiveRecord::Migration
  def change
    add_column :recommendations, :status, :string
  end
end
