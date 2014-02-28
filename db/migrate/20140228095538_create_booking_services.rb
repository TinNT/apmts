class CreateBookingServices < ActiveRecord::Migration
  def change
    create_table :booking_services do |t|
      t.integer :persona_id
      t.integer :user_id
      t.string :name
      t.text :description
      t.integer :duration
      t.integer :participant
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
