class CreateUserRunData < ActiveRecord::Migration
  def change
    create_table :user_run_data do |t|
      t.timestamp :timestamp
      t.references :stairway

      t.timestamps
    end
  end
end
