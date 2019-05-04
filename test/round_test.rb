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

#testing attributes
  def test_rounds_has_attributes
    round = Round.new(deck)

    assert_equal deck, round.deck
  end

#making sure we get back an empty array from the get go.
  def test_turn_starts_out_empty
    round = Round.new(deck)

    #assert_nil true, round.turns
  end

  def test_current_card

    assert_equal #specific card, round.current_card
  end

  def test_take_turn(guess)
    turn_1 = Turn.new("Juneau")


    #new_turn = round.take_turn("Juneau")
    #=> #<Turn:0x00007f99842f09e8 @card=#<Card:0x00007f800e29f0c9
    #@question="
    #"What is the capital of Alaska?",
    #@answer="Juneau",
    #@category=:Geography>,
    #@guess="Juneau">
    assert_equal
  end

  def test_number_correct
    #setup

    assert_equal # ((cards_correct)/(total_cards)), rounds.number_correct
  end
  #A Round will be the object that processes responses and records guesses.
  #A Round is initialized with a Deck.
  #The idea is that when we start a Round, the current card is the first in the deck (the first in the Deck’s array of Cards).
  #When we make a guess, the guess is recorded, and the next card in the deck becomes the current card.

# The take_turn method is the crux of this problem.
# The take_turn method takes a string representing the guess.
# It should create a new Turn object with the appropriate guess and Card.
# It should store this new Turn, as well as return it from the take_turn method.
# Also, when the take_turn method is called, the Round should move on to the next card in the deck.

end
