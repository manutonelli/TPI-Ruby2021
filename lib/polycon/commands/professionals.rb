module Polycon
  module Commands
    module Professionals
      require 'polycon/functions/Professional'
      class Create < Dry::CLI::Command
        desc 'Create a professional'

        argument :name, required: true, desc: 'Full name of the professional'


        def call(name:, **)
          Professional.new(name).create
          puts "El profesional con nombre '#{name}' fue creado de forma exitosa."
        end
      end

      class Delete < Dry::CLI::Command
        desc 'Delete a professional (only if they have no appointments)'

        argument :name, required: true, desc: 'Name of the professional'

        def call(name: nil)
          Professional.new(name).delete
          puts "El profesional con nombre '#{name}' fue eliminado de forma exitosa."
        end
      end

      class List < Dry::CLI::Command
        desc 'List professionals'
        def call(*)
          Professional.list
        end
      end

      class Rename < Dry::CLI::Command
        desc 'Rename a professional'

        argument :old_name, required: true, desc: 'Current name of the professional'
        argument :new_name, required: true, desc: 'New name for the professional'

        def call(old_name:, new_name:, **)
          Professional.new(old_name).rename new_name
          puts "Se cambio el nombre de '#{old_name}' a '#{new_name}"
        end
      end
    end
  end
end
