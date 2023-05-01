class Player 
  #read only the player name
  attr_reader :name

  #set default player if no name was entered
  def initialize(name = Player)
  @name = name
  lives = 3
  end


end