class GasStop < ActiveRecord::Base
  attr_accessible :date, :invoice_number, :location, :metric, :state, :trip_report_id, :vendors_name, :volume

  belongs_to :trip_report
end
