class Appointment

  @@all = []

  attr_accessor :name, :patient, :doctor

  def initialize(date, patient, doctor)
     @date = date
     @patient = patient
     @doctor = doctor
     @@all << self
  end

  def new_appointment(date, doctor)
      Appointment.new(date, self, doctor)
  end

  def self.all
    @@all
  end
end
