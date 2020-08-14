class Appointment

  @@all = []

  attr_accessor :name

  def initialize(date)
     @date = date
     @@all << self
  end

  def new_appointment(date, doctor)
      Appointment.new(date, self, doctor)
  end

  def self.all
    @@all
  end
end
