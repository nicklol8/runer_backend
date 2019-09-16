class AddLeadeboardToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :leaderboard_id, :integer
  end
end
