class CreateBookingEntries < ActiveRecord::Migration
  def change
    create_table :booking_entries do |t|
      t.integer :persona_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :source
      t.datetime :move_in
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
