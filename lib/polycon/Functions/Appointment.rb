class Appointment
  attr_accessor :turno, :profesional, :cuerpo

  def initialize date, professional, name, surname, phone, notes
    self.turno = Assistant.format date
    self.profesional= professional
    self.cuerpo = "#{surname}\n#{name}\n#{phone.to_s}\n#{notes}"
  end

  def self.posicionamientoEn(professional)
    Dir.chdir(professional)
  end

  def self.crear(date, name, surname, phone, notes = nil)
    File.write("#{surname}\n#{name}\n#{phone}\n#{notes}")
  end
end