class Appointment

  @@all = []

  attr_accessor :doctor, :patient, :name

  def initialize(doctor, patient, name)
    @doctor = doctor
    @patient = patient
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
end
#end of Appointment class
