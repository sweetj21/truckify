class Crossing < ActiveRecord::Base
  attr_accessible :odometer_reading, :routes_used, :state

  belongs_to :trip_report
end
