require './player-class.rb'

class Game 
  #get player name
  # attr_accessor :name

  def initialize
    #Access the players from Player class
    @players = [Player.new("Player 1"), Player.new("Player 2")]
    @current_player = players[0]
    @turn = current_player

    puts "hello player, #{@players}"
  end


end