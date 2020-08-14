class Doctor

   @@all = []

   attr_accessor :name

   def initialize(name)
      @name = name
      @@all << self
   end

   def new_appointment(date, patient)
       Appointment.new(date, patient)
   end

   def self.all
     @@all
   end
end
