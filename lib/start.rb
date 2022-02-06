class Start
  attr_reader :player1, :player2
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def game_start
    p "Welcome to War! (or Peace) This game will be played with 52 cards."
    p "The players today are #{player1.name} and #{player2.name}."
    p "Type 'GO' to start the game!"
    p "__________________________________________________________________"
    input = gets.chomp
      if input != 'GO'
        p "Incorrect input. Please enter 'GO'"
      end
  end
end
