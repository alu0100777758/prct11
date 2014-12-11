class Quiz
   attr_accessor :questions, :answers, :titulo
   def initialize(titulo, &block)
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
   
   def question(name, options = {})
    q = name
    aux = []
    if options[:right] == nil
       puts "No hay una respuesta correcta"
        return
    end
    if options[:wrong] == nil
        puts "No hay ninguna respuesta incorrecta"
        return
    end
    
    aux << " *) #{options[:right]}" 
    options[:wrong].each do |w|
        aux << " *) #{w}"  
    end
    questions << q
    answers << aux
  end
end