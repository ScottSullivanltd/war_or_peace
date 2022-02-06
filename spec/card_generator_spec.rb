require './lib/card_generator'
require './lib/card'
require './lib/deck'
require './lib/player'
require './lib/turn'
require 'pry'

RSpec.describe CardGenerator do
  it "creates an instance of card generator" do
    generate_card = CardGenerator.new(filename)

    expect(generate_card).to be_an_instance_of(CardGenerator)
  end
end
