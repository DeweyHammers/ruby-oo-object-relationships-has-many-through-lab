class Patient
    attr_reader :name

    @@patients = []

    def initialize(name)
        @name = name
        save()
    end

    def save
        @@patients << self
    end

    def self.all
        @@patients
    end

    def new_appointment(date, doctor)
        date = Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end

    def doctors 
        appointments().map {|appointment| appointment.doctor}
    end
end
