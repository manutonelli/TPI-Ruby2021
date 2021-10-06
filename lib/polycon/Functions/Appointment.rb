class Appointment
  attr_accessor :turno, :profesional, :cuerpo
  requiere '/polycon/Functions/Assistant'

  def initialize date, professional, name, surname, phone, notes
    self.turno = Assistant.format date
    self.profesional= professional
    self.cuerpo = "#{surname}\n#{name}\n#{phone.to_s}\n#{notes}"
  end
  def create
      Dir.chdir("#{Dir.home}/.polycon/#{profesional}/") #posicionamiento
      File.new("#{self.turno}.paf","#{self.cuerpo}"
      puts "Creado exitosamente"
    end
end