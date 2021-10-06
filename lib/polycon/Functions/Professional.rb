class Professional
  attr_accessor :name

  def initialize(nombre)
    self.name = nombre
  end

  def create
    Dir.mkdir name
  end

  def delete
    Dir.delete name
  end

  def self.list
    Dir.each_child("#{File.join(Dir.home,"/.polycon/")}") {|file|puts "Nombre: #{file}"}
  end

end