module Booking
  class Event < ActiveRecord::Base
    attr_accessible :description, :end_at, :entry_id, :service_id, :start_at
  end
end
