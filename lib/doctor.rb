class Doctor
    attr_reader :name
    @@all = []
    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(self, patient, date)
    end

    def appointments
        Appointment.all.select {|appointment|
            appointment.doctor == self
        }
    end

    def patients
        Appointment.all.collect {|appointment|
            if appointment.doctor == self
                appointment.patient
            end
        }
    end

end