class Turn
  attr_reader :player1, :player2, :spoils_of_war
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []
  end

  # def type
  #   :basic = player1.deck.rank_of_card_at(0) != player2.deck.rank_of_card_at(0)
  #   :war = player1.deck.rank_of_card_at(0) = player2.deck.rank_of_card_at(0)
  #   :mutually_assured_destruction = player1.deck.rank_of_card_at(0) = player2.deck.rank_of_card_at(0) && player1.deck.rank_of_card_at(2) = player2.deck.rank_of_card_at(2)
  # end

  # def winner
  #   if type == :basic
  #     return player1 if player1.deck.rank_of_card_at(0) > player2.deck.rank_of_card_at(0)
  #                      else player2
  #                    end
  #   elsif type == :war
  #     return player1 if player1.deck.rank_of_card_at(2) > player2.deck.rank_of_card_at(2)
  #     player2
  #   else type == :mutually_assured_destruction
  #     return "No Winner"
  #   end
  end
