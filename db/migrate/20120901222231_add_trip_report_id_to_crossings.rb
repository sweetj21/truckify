class AddTripReportIdToCrossings < ActiveRecord::Migration
  def change
    add_column :crossings, :trip_report_id, :integer
  end
end
