class CreateBookingEvents < ActiveRecord::Migration
  def change
    create_table :booking_events do |t|
      t.integer :service_id, :limit => 8
      t.integer :entry_id, :limit => 8
      t.datetime :start_at
      t.datetime :end_at
      t.text :description

      t.timestamps
    end
    
    change_column "booking_events", "id", "bigint"
    
    add_index "booking_events", ["service_id"], :name => "index_booking_events_on_service_id"
    add_index "booking_events", ["entry_id"], :name => "index_booking_events_on_entry_id"
  end
end
