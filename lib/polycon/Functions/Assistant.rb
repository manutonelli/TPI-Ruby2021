class Assistant

  def self.path
    return File.join(Dir.home, "/.polycon/")
  end

  def self.format name
    return (name.gsub ":","-").gsub " ","_"
  end

  def self.professional_check name
    abort("Este profesional no existe") unless Dir.exist? name
  end
end
