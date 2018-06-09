class Doc
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, doctor, date)
    appointment = Appointment.new(patient, doctor=self, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end
end
