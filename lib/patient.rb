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
    appointment = Appointment.new(date, self, doctor)
  end

  def appointments
    array = []
    Appointment.all.each do |appointment|
      if appointment.patient == self
        array << appointment
      end
    end
    array
  end

  def doctors
    array = []
    appointments.each do |appointment|
      if appointment.patient = self
        array << appointment.doctor
      end
    end
    array
  end


end
