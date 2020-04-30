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
        appointment.doctor = self
        appointment
    end

    def appointments
        Appointment.all.select {|app| app.doctor == self}
    end

    def patients
        self.appointments.map do |app|
            app.patient
        end
    end
end