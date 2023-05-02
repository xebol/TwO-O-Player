require './question-class.rb'

class Player 
  #read only the player name
  attr_reader :name
  attr_accessor :lives

  #set default player if no name was entered
  def initialize(name)
  @name = name
  @lives = 3
  end

  def new_question

  #initialize Questions. It becomes a Questions' class object
  player_question =  Questions.new

  #call create_question question method
  player_question.create_question

  player_question
  end

end