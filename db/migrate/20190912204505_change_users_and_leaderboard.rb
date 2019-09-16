class ChangeUsersAndLeaderboard < ActiveRecord::Migration[6.0]
  def change
    remove_column :leaderboards, :user_id

  end
end
