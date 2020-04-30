class Patient
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        appointment = Appointment.new(date, self, doctor)
        appointment.patient
        appointment
    end

    def appointments
        Appointment.all.select {|app| app.patient == self}
    end

    def doctors
        
        self.appointments.map do |app|
          app.doctor
        end
        
        
    end

end