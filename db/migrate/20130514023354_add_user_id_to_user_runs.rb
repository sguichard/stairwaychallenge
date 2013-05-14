class AddUserIdToUserRuns < ActiveRecord::Migration
  def change
    add_column :user_runs, :user_id, :integer
  end
end
