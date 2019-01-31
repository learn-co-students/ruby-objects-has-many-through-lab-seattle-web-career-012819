class Patient
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select { |appts| appts.patient == self }
  end

  def doctors
    Appointment.all.map { |appts| appts.doctor if appts.patient == self }
  end
end
