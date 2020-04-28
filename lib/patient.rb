class Patient
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

#takes in arguments of a doctor and a date 
#and creates a new Appointment 
def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
end 

#Runs thru Appointment array and returns 
#Appointments that belong to the patiend
def appointments
    Appointment.all.select{|appointment| appointment.patient == self}
end

#iterates over that patient's appointments and collects the doctor 
#that belongs to each appointment
def doctors
    appointments.map{|appointment|appointment.doctor}.uniq
end  
 
end