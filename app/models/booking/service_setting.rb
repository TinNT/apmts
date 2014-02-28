module Booking
  class ServiceSetting < ActiveRecord::Base
    include MultiTenant::RandomPrimaryKeyHelper
    
    belongs_to :service
    
    #validates :service_id, :day, :presence => true
  end
end
