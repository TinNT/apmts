class CreateBookingEvents < ActiveRecord::Migration
  def change
    create_table :booking_events do |t|
      t.string :title
      t.datetime :starttime, :endtime
      t.boolean :all_day, :default => false
      t.text :description
      t.integer :event_series_id
      t.timestamps
    end
    add_index :booking_events, :event_series_id
  end
end
