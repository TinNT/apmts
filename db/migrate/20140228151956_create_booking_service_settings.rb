class CreateBookingServiceSettings < ActiveRecord::Migration
  def change
    create_table :booking_service_settings do |t|
      t.integer :service_id, :limit => 8
      t.string :name
      t.integer :day, :default => 0
      t.boolean :day_off, :default => false
      t.integer :from_hour, :default => 8
      t.integer :from_min, :default => 30
      t.integer :to_hour, :default => 16
      t.integer :to_min, :default => 30
      t.string :breaks, :default => "11:30,12:00"

      t.timestamps
    end
    
    change_column "booking_service_settings", "id", "bigint"
    
    add_index "booking_service_settings", ["service_id"], :name => "index_booking_service_settings_on_service_id"
    
  end
end
