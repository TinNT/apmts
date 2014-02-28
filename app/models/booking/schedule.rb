module Booking
  class Schedule < ActiveRecord::Base
    attr_accessible :day, :day_off, :from_hour, :from_min, :name, :service_id, :to_hour, :to_min
  end
end
