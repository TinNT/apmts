class CreateBookingServices < ActiveRecord::Migration
  def change
    create_table :booking_services do |t|
      t.integer :persona_id, :limit => 8
      t.integer :user_id, :limit => 8
      t.string :name
      t.text :description
      t.integer :duration, :default => 30
      t.integer :participant, :default => 1
      t.datetime :deleted_at

      t.timestamps
    end
    
    change_column "booking_services", "id", "bigint"
    
    add_index "booking_services", ["persona_id"], :name => "index_booking_services_on_persona_id"    
  end
end
