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
    Appointment.all.select {|a| a.patient == self}
  end

  def doctors
     Doctor.collect {|a| a.doctor}
  end

  def self.all
    @@all
  end
end
