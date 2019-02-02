class Patient

  attr_accessor :name
 @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end


  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    new_p = Appointment.new(date, doctor, self)
  end

  def appointments
    Appointment.all.select do |appt|
    appt.patient == self
    end
  end

  def doctors
    self.appointments.collect do |d|
    d.doctor
  end
end
end #end of class
