class AddForeignKeyJobStatusToRecommendations < ActiveRecord::Migration
  def change
    add_reference :recommendations, :jobStatus, index: true, foreign_key: true
  end
end
