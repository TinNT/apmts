module Booking
  class Event < ActiveRecord::Base
    include MultiTenant::RandomPrimaryKeyHelper
    
    belongs_to :service
    belongs_to :entry
    
    validates :service_id, :entry_id, :end_at, :start_at, :presence => true
  end
end