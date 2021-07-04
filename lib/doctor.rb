require "pry"

class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end

  def appointments
    #binding.pry
    Appointment.all.select { |appt| appt.doctor = self }
  end

  def patients
    #binding.pry
    self.appointments.map { |appt| appt.patient}
  end

end
