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
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select {|x| x.patient == self}
  end

  def doctors
    self.appointments.map do |appointment|
      appointment.doctor
    end
  end

end