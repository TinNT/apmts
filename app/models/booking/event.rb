module Booking
  class Event < ActiveRecord::Base
    attr_accessible :description, :end_at, :entry_id, :service_id, :start_at
    
    belongs_to :service
    belongs_to :entry
    
    validates :service_id, :entry_id, :end_at, :start_at, :presence => true
  end
end