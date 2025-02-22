class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = cards
  end

  def add_card(card)
    @cards << card
  end

  def rank_of_card_at(rank)
    if cards[2] == nil
      1
    else
      cards[rank].rank
    end
  end

  def high_ranking_cards
    high_ranking_cards = []
    cards.each do |card|
      if card.rank > 10
        high_ranking_cards << card
      end
    end
    high_ranking_cards
  end

  def percent_high_ranking
    (high_ranking_cards.length.to_f / cards.length.to_f).round(4) * 100
  end

  def remove_card
    cards.shift
  end

end
