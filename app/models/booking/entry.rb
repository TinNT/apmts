module Booking
  class Entry < ActiveRecord::Base
    include MultiTenant::RandomPrimaryKeyHelper
    
    belongs_to :persona
    
    validates :persona_id, :email, :first_name, :last_name, :phone, :move_in, :presence => true
    
  end
end
