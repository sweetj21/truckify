class RemoveUnitIdFromTripReports < ActiveRecord::Migration
  def up
    remove_column :trip_reports, :unit_id
  end

  def down
    add_column :trip_reports, :unit_id, :integer
  end
end
