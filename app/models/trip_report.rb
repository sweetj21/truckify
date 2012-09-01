class TripReport < ActiveRecord::Base
  attr_accessible :driver_id, :most_distant_city, :odometer_end, :odometer_start, :trip_end_date, :trip_ended_at, :trip_start_date, :trip_started_at, :unit_id

  belongs_to :driver
end
