class Doctor
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end
    
    attr_accessor :name

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def patients
        patients_array = []
        self.appointments.each do |appointment|
            patients_array << appointment.patient
        end
        patients_array
    end
end