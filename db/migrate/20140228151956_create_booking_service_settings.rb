class CreateBookingServiceSettings < ActiveRecord::Migration
  def change
    create_table :booking_service_settings do |t|
      t.integer :service_id
      t.string :name
      t.integer :day
      t.boolean :day_off
      t.integer :from_hour
      t.integer :from_min
      t.integer :to_hour
      t.integer :to_min

      t.timestamps
    end
  end
end
