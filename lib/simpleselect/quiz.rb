class Quiz
   RIGHT = :right
   WRONG = :wrong
   attr_accessor :questions, :answers, :titulo
   def wrong
      @counter += 1
      [@counter, WRONG]
   end
   
   def right
      @counter+= 1
      [@counter, RIGHT]
   end
   def initialize(titulo, &block)
      @counter = 0
      @titulo=titulo
      self.questions=[]
      self.answers=[]
      
      if block_given?  
      if block.arity == 1
        yield self
      else
       instance_eval &block 
      end
    end
   end
   def to_s
      output = @titulo
      output << "\n#{'=' * titulo.size}\n"
      
      questions.each_with_index do |q, ind|
          output << "\n"
          output << q
          output <<"\n"
          
          answers[ind].each do |an|
              output << an
              output << "\n"
          end
      end
      output
   end
   
   def question(name, options)
   q = name
    aux = []
    options.each do |w|
        aux << " *) #{w[1]}"  
    end
    questions << q
    answers << aux
    @counter = 0
  end
end

    quiz=Quiz.new("Cuestionario de LPP 05/12/2014") do 
            question "Ruby es un lenguaje orientado a objetos?", 
            right => "SI", 
            wrong => "F"
            question "Indique cual de los siguientes es un metodo de array", 
            right => "each", 
            wrong =>"algo",
            wrong=> "otro"
         end
         
         puts quiz