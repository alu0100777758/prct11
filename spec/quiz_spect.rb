require "simpleselect.rb"

describe Quiz do
   
   describe "Existe el objeto quiz" do
      it " y recibe un bloque en el initialize"do
         @quiz=Quiz.new("Cuestionario de LPP 05/12/2014") do |a|
         
         end
      end
      it "recibe un bloque y guarda una pregunta: " do
          @quiz=Quiz.new("Cuestionario de LPP 05/12/2014") do |a|
            a.question "Ruby es un lenguaje orientado a objetos?", :right => "V", :wrong => ["F"]
         end
      end
      it "Se puede imprimir la pregunta" do
         @quiz.to_s
      end
      it "Se puede crear con preguntas multirespuesta" do
         quiz=Quiz.new("Cuestionario de LPP 05/12/2014") do |a|
            a.question "Ruby es un lenguaje orientado a objetos?", :right => "SI", :wrong => ["F"]
            a.question "Indique cual de los siguientes es un metodo de array", :right => "each", :wrong => ["algo", "otro"]
         end
      end
      it "Se puede crear sin necesidad de utilizar parametros" do
         quiz=Quiz.new("Cuestionario de LPP 05/12/2014") do 
            question "Ruby es un lenguaje orientado a objetos?", :right => "SI", :wrong => ["F"]
            question "Indique cual de los siguientes es un metodo de array", :right => "each", :wrong => ["algo", "otro"]
         end
      end
      
   end
end
