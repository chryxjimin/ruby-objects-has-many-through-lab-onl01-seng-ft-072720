class Doctor

   @@all = []

   attr_accessor :name

   def initialize(name)
      @name = name
      @@all << self
   end

   def appointments(date, patient)
       Appointment.new(date, patient, self)
   end

   def self.all
     @@all
   end
end
