module Booking
  class ServiceSetting < ActiveRecord::Base
    attr_accessible :day, :day_off, :from_hour, :from_min, :name, :service_id, :to_hour, :to_min
    
    belongs_to :service
  end
end
