class AddUnitNumberToDrivers < ActiveRecord::Migration
  def change
    add_column :drivers, :unit_id, :integer
  end
end
