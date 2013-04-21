class ChangeUserRunsTableName < ActiveRecord::Migration
  def up
    rename_table :user_run, :user_runs
  end

  def down
    rename_table :user_runs, :user_run
  end
end
