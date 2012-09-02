class TripReport < ActiveRecord::Base
  attr_accessible :driver_id, :most_distant_city, :odometer_end, :odometer_start, :trip_end_date, :trip_ended_at, :trip_start_date, :trip_started_at, :metric

  belongs_to :driver

  has_many :crossings
  has_many :gas_stops

  after_commit :add_location

  def odometer_range
  	self.odometer_end - self.odometer_start
  end

  def km_or_miles
  	if self.metric
  		" km"
  	else
  		" miles"
  	end
  end
end
