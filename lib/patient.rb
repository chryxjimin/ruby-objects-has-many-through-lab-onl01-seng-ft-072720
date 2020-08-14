class Patient

  @@all = []

  attr_accessor :name

  def initialize(name)
     @name = name
     @@all << self
  end

  def new_appointment(date, doctor)
      Appointment.new(date, self, doctor)
  end

  def appointments
      Appointment.collect {|a| a.patient == self}
  end 

  
  def self.all
    @@all
  end
end
