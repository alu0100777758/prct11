class Quiz
   attr_accessor :questions 
   def initialize(titulo)
      @titulo=titulo
      self.questions=[]
      yield self
   end
   def question(name, options = {})
    question = name
    question << " (#{options[:right,:wrong]})" if options[:right,:wrong]

    question << questions
  end
end