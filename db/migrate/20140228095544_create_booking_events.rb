class CreateBookingEvents < ActiveRecord::Migration
  def change
    create_table :booking_events do |t|
      t.integer :service_id
      t.integer :entry_id
      t.datetime :start_at
      t.datetime :end_at
      t.text :description

      t.timestamps
    end
  end
end
