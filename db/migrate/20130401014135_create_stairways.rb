class CreateStairways < ActiveRecord::Migration
  def change
    create_table :stairways do |t|
      t.string :name
      t.text :description
      t.decimal :longitude
      t.decimal :latitude

      t.timestamps
    end
  end
end
