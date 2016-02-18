class RemoveStatusFromRecommendations < ActiveRecord::Migration
  def change
    remove_column :recommendations, :status, :string
  end
end
