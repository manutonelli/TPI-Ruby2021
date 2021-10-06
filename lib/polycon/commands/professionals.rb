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

        example [
          '"Alna Esevez" "Alma Estevez" # Renames the professional "Alna Esevez" to "Alma Estevez"',
        ]

        def call(old_name:, new_name:, **)
          warn "TODO: Implementar renombrado de profesionales con nombre '#{old_name}' para que pase a llamarse '#{new_name}'.\nPodés comenzar a hacerlo en #{__FILE__}:#{__LINE__}."
        end
      end
    end
  end
end
