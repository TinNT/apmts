module Booking
  class Service < ActiveRecord::Base
    include MultiTenant::RandomPrimaryKeyHelper
    
    belongs_to :user
    belongs_to :persona
    
    has_many :events
    has_many :settings, :class_name => "ServiceSetting", :dependent => :destroy
    
    accepts_nested_attributes_for :settings, :allow_destroy => true
    
    validates :persona_id, :user_id, :name, :participant, :presence => true
    
  end
end