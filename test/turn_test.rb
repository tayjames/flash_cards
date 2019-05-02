require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'

class TurnTest < Minitest::Test

  def test_turn_exists
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    turn_2 = Turn.new("Panama City", card)

    assert_instance_of Turn, turn
    assert_instance_of Turn, turn_2
  end

  def test_correct?

    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    turn_2 = Turn.new("Panama City", card)

    assert_equal true, turn.correct?
    assert_equal false, turn_2.correct?
  end

  def test_feedback

    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    turn_2 = Turn.new("Panama City", card)

    assert_equal "Correct!", turn.feedback
    assert_equal "Incorrect.", turn_2.feedback
  end

  def test_it_has_a_guess
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    assert_equal "Juneau", turn.guess
  end

  # def test_it_has_a
end
