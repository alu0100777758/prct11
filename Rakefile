require "bundler/gem_tasks"

task :default => :spec
desc "Ejecutar las espectativas de la clase simpleselect"
task :spec do
   sh "rspec -I. spec/simpleSelect_spec.rb"
   sh "rspec -I. spec/listNode_spec.rb"
   sh "rspec -I. spec/examen_spec.rb"
   sh "rspec -I. spec/interface_spec.rb"
   sh "rspec -I. spec/quiz_spect.rb"
end
task :examen do
   sh "ruby -I. spec/examen_interfaz.rb"
end
task :prct11 do
   sh "rspec -I. spec/quiz_spect.rb"
end