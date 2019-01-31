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
    appointment = Appointment.new(date, patient, self)
  end

  def appointments
    array = []
    Appointment.all.each do |appointment|
      if appointment.doctor == self
        array << appointment
      end
    end
    array
  end

  def patients
    array = []
    appointments.each do |appointment|
      array << appointment.patient
    end
    array.uniq
  end
end
