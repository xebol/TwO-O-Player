require './player-class.rb'
require './question-class.rb'

class Game 

  def initialize
    #Access the players from Player class
    @players = [Player.new("Player 1"), Player.new("Player 2")]
    @current_player = @players[0]   
  end
  
  def start_game
    puts "Hello player, #{@players[0].name} and #{@players[1].name}. Let's begin!"

    loop do

    #call new_question method on current player
    current_question = @current_player.new_question
    puts current_question.create_question

    #player enters the answer
    player_answer = gets.chomp

    answer_value = current_question.answer(player_answer)

    #checking is the given answer is true if false subtract 1 from lives
    if answer_value == true
        puts "Correct! #{@current_player.name}" 
        puts "-----NEW TURN -----"
    else
      puts "Incorrect! #{@current_player.name}"
      #  @current_player.lives -= 1
      @lives = @current_player.lives -= 1
      # puts @lives
      puts "#{@current_player.lives} / 3"
      puts "-----NEW TURN -----"
    #check if a player still have lives
    if @lives == 0
      puts "#{@current_player.name} You're out of lives. GAME OVER!"
      break
    end
  end

  
  @current_player = @players.find {| player | player != @current_player}
  end

  end
end