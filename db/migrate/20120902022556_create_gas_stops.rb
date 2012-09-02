class CreateGasStops < ActiveRecord::Migration
  def change
    create_table :gas_stops do |t|
      t.string :state
      t.date :date
      t.string :vendors_name
      t.string :location
      t.integer :invoice_number
      t.integer :volume
      t.boolean :metric
      t.integer :trip_report_id

      t.timestamps
    end
  end
end
