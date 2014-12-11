require "simpleselect.rb"

describe Quiz do
   
   describe "Existe el objeto quiz" do
      it " y recibe un bloque en el initialize"do
         @quiz=Quiz.new("Cuestionario de LPP 05/12/2014") do end
      end
   end
end
