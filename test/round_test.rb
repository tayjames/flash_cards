require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'

class RoundTest < Minitest::Test

  def test_round_exists
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    cards = [card_1, card_2, card_3]

    deck = Deck.new(cards)

    round = Round.new(deck)

    assert_instance_of Round, round
  end

  #A Round will be the object that processes responses and records guesses.
  #A Round is initialized with a Deck.
  #The idea is that when we start a Round, the current card is the first in the deck (the first in the Deck’s array of Cards).
  #When we make a guess, the guess is recorded, and the next card in the deck becomes the current card.



end
