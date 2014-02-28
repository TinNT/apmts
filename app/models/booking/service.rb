module Booking
  class Service < ActiveRecord::Base
    attr_accessible :deleted_at, :description, :duration, :name, :participant, :persona_id, :user_id
  end
end
