class Patient
  attr_accessor :name, :appointments, :doctors
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    apt = doctor.new_appointment(self, date)
    @doctors << doctor
    @appointments << apt
    apt
  end


end
