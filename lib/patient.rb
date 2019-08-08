class Patient
    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    attr_accessor :name

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end

    def doctors
        doctors_array = []
        self.appointments.each do |appointment|
            doctors_array << appointment.doctor
        end
        doctors_array
    end
end