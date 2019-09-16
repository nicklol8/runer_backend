class AddUsersToLeaderboard < ActiveRecord::Migration[6.0]
  def change
    add_column :leaderboards, :user_id, :integer
  end
end
