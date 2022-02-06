require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/start'
require 'pry'

RSpec.describe Start do
  it "creates an instance of start" do

    new_game = Start.new(player1, player2)
    
    expect(new_game).to be_an_instance_of(Start)
  end

  it "prints a welcome and initiates a new game" do

    new_game = Start.new(player1, player2)
    new_game.game_start

    expect(new_game.game_start).to eq("Welcome to War! (or Peace) This game will be played with 52 cards."
        "The players today are #{player1.name} and #{player2.name}."
        "Type 'GO' to start the game!"
        "__________________________________________________________________")
  end

  it "provides an error message if wrong input is entered" do

    new_game = Start.new(player1, player2)
    new_game.game_start

    expect(new_game.error_message).to eq("Incorrect input. Please enter 'GO'")
  end
end
