class Doctor 
  
  attr_accessor :name, :appointment, :date, :patient
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end 
  
  
  def self.all
    @@all
  end 
  
  def appointments
    @appointments
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end 
  end 
  
  def patients
    Appointment.all.map do |appointment|
      appointment.patient
    end 
  end 
  
  def new_appointment(patient,date)
    appointment = Appointment.new(date,patient,self)
    self.appointments.last
  end 
  
end