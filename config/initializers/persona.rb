Persona.class_eval do
  has_many :services, :class_name => "Booking::Service"
  has_many :booking_entries, :class_name => "Booking::Entry"
end