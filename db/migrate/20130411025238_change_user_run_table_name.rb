class ChangeUserRunTableName < ActiveRecord::Migration
  def up
    rename_table :user_run_data, :user_run
  end

  def down
    rename_table :user_run, :user_run_data
  end
end
