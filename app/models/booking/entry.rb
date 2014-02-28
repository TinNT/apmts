module Booking
  class Entry < ActiveRecord::Base
    attr_accessible :deleted_at, :email, :first_name, :last_name, :move_in, :persona_id, :phone, :source
  end
end
