class AddMetricToCrossings < ActiveRecord::Migration
  def change
    add_column :crossings, :metric, :boolean
  end
end
