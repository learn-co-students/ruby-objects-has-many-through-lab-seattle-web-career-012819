class Appointment 
  
  attr_accessor :doctor, :date, :patient
  
  @@all = []
  
  def initialize(date,patient, doctor)
    @doctor = doctor
    @date = date
    @patient = patient  

    @@all << self 
  end 

  def self.all
    @@all 
  end 
  
  def patient 
    @patient
  end 
  
  def doctor
    @doctor
  end 
  
end 