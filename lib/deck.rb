class Deck
  attr_reader :cards
  def initialize(cards)
    @cards = []
  end

  def rank_of_cards_at
    @rank_of_cards_at = ()
  end

  def high_ranking_cards
    @high_ranking_cards = []
  end

  def percent_high_ranking
    @percent_high_ranking
  end

  def remove_card
    @remove_card = remove_card.shift
  end

  def add_card
    @add_card = add_card.push
  end
end
