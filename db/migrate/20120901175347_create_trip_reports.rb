class CreateTripReports < ActiveRecord::Migration
  def change
    create_table :trip_reports do |t|
      t.integer :driver_id
      t.integer :unit_id
      t.date :trip_start_date
      t.date :trip_end_date
      t.string :trip_started_at
      t.integer :trip_ended_at
      t.integer :most_distant_city
      t.integer :odometer_start
      t.integer :odometer_end

      t.timestamps
    end
  end
end
