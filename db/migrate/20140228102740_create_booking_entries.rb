class CreateBookingEntries < ActiveRecord::Migration
  def change
    create_table :booking_entries do |t|
      t.integer :persona_id, :limit => 8
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :source
      t.datetime :move_in
      t.datetime :deleted_at

      t.timestamps
    end
    
    change_column "booking_entries", "id", "bigint"
    
    add_index "booking_entries", ["persona_id"], :name => "index_booking_entries_on_persona_id"
    
  end
end
