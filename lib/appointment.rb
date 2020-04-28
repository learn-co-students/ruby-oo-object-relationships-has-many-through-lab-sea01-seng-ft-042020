require "pry"
class Appointment
    attr_accessor :date, :patient, :doctor 

    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor 

        save 
    end

    def save
        @@all << self
    end

    def self.all
        @@all 
    end
end

#erin = Appointment.new("Feb 1", "Erin Reames", "Doogie Howser")
#binding.pry
