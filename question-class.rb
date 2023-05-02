class Questions
  #display the questions
  attr_reader :question
  
  #initialize with two random numbers
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @operators = ["+", "-", "*"]
    #store operators.sample in a variable to capture the first operator in the iteration of .sample
    @equation = @operators.sample
    #calculate answer upon initialization
    case @equation
      when "+" 
        @correct_answer = @num1 + @num2
      when "-" 
        @correct_answer = @num1 - @num2
      when "*" 
        @correct_answer = @num1 * @num2
    end
  end

  #question method 
  #.sample randomizes operators
  def create_question
    question = "What is #{@num1} #{@equation} #{@num2}?"
  end

  #check if answer matches question
  #ans parameter is player input
  def answer(ans)
    #verifying if player answer matches correct answer
    ans.to_i == @correct_answer
  end

end
