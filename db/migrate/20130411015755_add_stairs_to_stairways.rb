class AddStairsToStairways < ActiveRecord::Migration
  def change
    add_column :stairways, :stairs, :integer
  end
end
