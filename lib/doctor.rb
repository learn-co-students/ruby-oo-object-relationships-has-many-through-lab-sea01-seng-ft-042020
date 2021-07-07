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

    #takes in 
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

    #iterates over doctor's appointments and collects those belonging
    #to each appointments
    def patients
       appointments.map{|appointment| appointment.patient}.uniq
    end

end

#binding.pry
