class Patient

  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end

  def doctors
    self.appointments.map do |appointment|
      appointment.doctor
    end
  end 

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end
end
#end of Patient class
