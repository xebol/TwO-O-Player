class Questions
  
  #initialize with two random numbers
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  #check if the answers are correct
  def right?(answer)
    answer = @num1 + @num2
end