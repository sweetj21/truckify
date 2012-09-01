class Crossing < ActiveRecord::Base
  attr_accessible :odometer_reading, :routes_used, :state, :trip_report_id

  belongs_to :trip_report
end
