class Doctor

  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
    @@all<< self
  end

def new_appointment(patient, date)
  new_a = Appointment.new(date, self, patient)
end

def appointments
  Appointment.all.select do |appt|
    appt.doctor == self
  end
end

def patients
self.appointments.collect do |person|
  person.patient
  end
end


def self.all
  @@all
end



end #end of Doctor class
