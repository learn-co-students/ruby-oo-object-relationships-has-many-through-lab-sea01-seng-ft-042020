require "pry"
class Doctor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        self.class.all.push(self)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
        self.appointments.map {|appointment| appointment.patient}
    end

    def self.all
        @@all
    end
end
