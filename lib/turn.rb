class Turn
  attr_reader :player1, :player2, :spoils_of_war
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @spoils_of_war = []
  end

  def type
    if @player1.deck.rank_of_card_at(0) != @player2.deck.rank_of_card_at(0)
      :basic
    elsif @player1.deck.rank_of_card_at(0) == @player2.deck.rank_of_card_at(0) && (@player1.deck.rank_of_card_at(2) != @player2.deck.rank_of_card_at(2))
      :war
    elsif (@player1.deck.rank_of_card_at(0) == @player2.deck.rank_of_card_at(0)) && (@player1.deck.rank_of_card_at(2) == @player2.deck.rank_of_card_at(2))
      :mutually_assured_destruction
    end
  end

  def winner
    if type == :basic
      return @player1 if @player1.deck.rank_of_card_at(0) > @player2.deck.rank_of_card_at(0)
        @player2
    elsif type == :war
      return @player1 if @player1.deck.rank_of_card_at(2) > @player2.deck.rank_of_card_at(2)
        @player2
    elsif type == :mutually_assured_destruction
      "No Winner"
    end
  end

  def pile_cards
    if type == :basic
      @spoils_of_war.push(@player1.deck.cards.shift, @player2.deck.cards.shift)
    elsif type == :war
      @spoils_of_war.push(@player1.deck.cards.shift, @player2.deck.cards.shift)
      @spoils_of_war.push(@player1.deck.cards.shift, @player2.deck.cards.shift)
      @spoils_of_war.push(@player1.deck.cards.shift, @player2.deck.cards.shift)
    elsif type == :mutually_assured_destruction
      @player1.deck.cards.shift
      @player1.deck.cards.shift
      @player1.deck.cards.shift
      @player2.deck.cards.shift
      @player2.deck.cards.shift
      @player2.deck.cards.shift
    end
  end

  def award_spoils(winner)
    until @spoils_of_war.empty?
      winner.deck.cards << @spoils_of_war.shift
    end
  #   if winner == @player1
  #     @player1.deck.cards.push(@spoils_of_war)
  #   else
  #     @player2.deck.cards.push(@spoils_of_war)
  #   end.flatten!
  #   spoils_of_war.clear
  end
end
