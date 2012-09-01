class TripReport < ActiveRecord::Base
  attr_accessible :driver_id, :most_distant_city, :odometer_end, :odometer_start, :trip_end_date, :trip_ended_at, :trip_start_date, :trip_started_at

  belongs_to :driver

  def odometer_range
  	self.odometer_end - self.odometer_start
  end
end
