class CreateCrossings < ActiveRecord::Migration
  def change
    create_table :crossings do |t|
      t.string :state
      t.integer :odometer_reading
      t.string :routes_used

      t.timestamps
    end
  end
end
