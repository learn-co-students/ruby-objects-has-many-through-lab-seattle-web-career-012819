class Patient
  @@all = []
  attr_accessor :name, :appointments, :doctors
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(doctor,self,date)
  end

  def appointments
    Appointment.all.select { |a| a.patient == self }
  end

  def doctors
    self.appointments.map { |a| a.doctor }
  end
end