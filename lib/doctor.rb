require "pry"
class Doctor
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name

        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all 
    end

    #needs an instance 
    #method, #new_appointment, that takes in a 
    #an instance of the Patient class and a date,
    #and creates a new Appointment. That Appointment 
    #should know that it belongs to the doctor 
    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    #iterates through all Appointments and finds 
    #those belonging to this doctor.
    def appointments
        Appointment.all.select{|appointments| appointments.doctor == self}
    end

    def patients
       appointments.map{|appointment| appointment.patient}.uniq
    end

end

denka = Doctor.new("Samuel Denka")
braun = Doctor.new("Ted Braun")

#binding.pry
