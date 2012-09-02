class AddMetricToTripReports < ActiveRecord::Migration
  def change
    add_column :trip_reports, :metric, :boolean
  end
end
