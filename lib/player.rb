class Player
  attr_reader :name, :deck
  def initialize(name, deck)
    @name = name
    @deck = deck
  end

  def has_lost?
    # return true if deck.cards.length == 0
    return false if deck.cards.count > 0
  end

end
