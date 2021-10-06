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

end