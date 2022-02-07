require 'rspec'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require './lib/start'
require 'pry'

deck_of_cards = [
  card1 = Card.new(:heart, 'Two', 2),
  card2 = Card.new(:heart, 'Three', 3),
  card3 = Card.new(:heart, 'Four', 4),
  card4 = Card.new(:heart, 'Five', 5),
  card5 = Card.new(:heart, 'Six', 6),
  card6 = Card.new(:heart, 'Seven', 7),
  card7 = Card.new(:heart, 'Eight', 8),
  card8 = Card.new(:heart, 'Nine', 9),
  card9 = Card.new(:heart, 'Ten', 10),
  card10 = Card.new(:heart, 'Jack', 11),
  card11 = Card.new(:heart, 'Queen', 12),
  card12 = Card.new(:heart, 'King', 13),
  card13 = Card.new(:heart, 'Ace', 14),
  card14 = Card.new(:diamond, 'Two', 2),
  card15 = Card.new(:diamond, 'Three', 3),
  card16 = Card.new(:diamond, 'Four', 4),
  card17 = Card.new(:diamond, 'Five', 5),
  card18 = Card.new(:diamond, 'Six', 6),
  card19 = Card.new(:diamond, 'Seven', 7),
  card20 = Card.new(:diamond, 'Eight', 8),
  card21 = Card.new(:diamond, 'Nine', 9),
  card22 = Card.new(:diamond, 'Ten', 10),
  card23 = Card.new(:diamond, 'Jack', 11),
  card24 = Card.new(:diamond, 'Queen', 12),
  card25 = Card.new(:diamond, 'King', 13),
  card26 = Card.new(:diamond, 'Ace', 14),
  card27 = Card.new(:spade, 'Two', 2),
  card28 = Card.new(:spade, 'Three', 3),
  card29 = Card.new(:spade, 'Four', 4),
  card30 = Card.new(:spade, 'Five', 5),
  card31 = Card.new(:spade, 'Six', 6),
  card32 = Card.new(:spade, 'Seven', 7),
  card33 = Card.new(:spade, 'Eight', 8),
  card34 = Card.new(:spade, 'Nine', 9),
  card35 = Card.new(:spade, 'Ten', 10),
  card36 = Card.new(:spade, 'Jack', 11),
  card37 = Card.new(:spade, 'Queen', 12),
  card38 = Card.new(:spade, 'King', 13),
  card39 = Card.new(:spade, 'Ace', 14),
  card40 = Card.new(:club, 'Two', 2),
  card41 = Card.new(:club, 'Three', 3),
  card42 = Card.new(:club, 'Four', 4),
  card43 = Card.new(:club, 'Five', 5),
  card44 = Card.new(:club, 'Six', 6),
  card45 = Card.new(:club, 'Seven', 7),
  card46 = Card.new(:club, 'Eight', 8),
  card47 = Card.new(:club, 'Nine', 9),
  card48 = Card.new(:club, 'Ten', 10),
  card49 = Card.new(:club, 'Jack', 11),
  card50 = Card.new(:club, 'Queen', 12),
  card51 = Card.new(:club, 'King', 13),
  card52 = Card.new(:club, 'Ace', 14)
]

deck_shuffle = deck_of_cards.shuffle!
deck_shuffle1 = deck_shuffle[0..25]
deck_shuffle2 = deck_shuffle[26..51]

deck1 = Deck.new(deck_shuffle1)
deck2 = Deck.new(deck_shuffle2)

player1 = Player.new("Megan", deck1)
player2 = Player.new("Aurora", deck2)

new_game = Start.new(player1, player2)
new_game.game_start

turn = Turn.new(player1, player2)
turn_number = 0
until turn_number == 1000000
  turn_type = turn.type
  turn_number += 1
    if turn_type == :basic
      winner = turn.winner
      turn.pile_cards
      turn.award_spoils(winner)
      puts "Turn #{turn_number}: #{winner.name} won 2 cards"
    elsif turn_type == :war
      winner = turn.winner
      turn.pile_cards
      turn.award_spoils(winner)
      puts "Turn #{turn_number}: WAR - #{winner.name} won 6 cards"
    elsif turn_type == :mutually_assured_destruction
      turn.pile_cards
      puts "Turn #{turn_number}: *mutually assured destruction* 6 cards removed from play"
    end
    break if player1.has_lost? || player2.has_lost?
end

if player1.has_lost?
  puts "*~*~*~* #{player2.name} has won the game! *~*~*~*"
elsif player2.has_lost?
  puts "*~*~*~* #{player1.name} has won the game! *~*~*~*"
else
  puts "---- DRAW ----"
end
