class Driver < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :unit_id

  has_many :trip_reports

  def first_and_last_name
  	self.first_name + " " + self.last_name
  end
end
