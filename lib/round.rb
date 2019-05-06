require 'pry'
require './lib/card'
require './lib/turn'
require './lib/deck'


class Round
  attr_reader :deck, :turns, :current_card

  def initialize(deck)
    @deck = deck
    @turns = []
    @correct_turns = []
    @correct_category = []
    @wrong_turns = []
    @current_card = @deck.cards.first

  end

  def start

    @deck.cards.each_with_index do |card, index|
    puts "This is card number #{index + 1} out of #{@deck.count}"
    puts "Question: #{card.question}?"

    guess = gets.chomp

      if guess == card.answer
        puts "Correct!"
      else
        puts "Incorrect."
      end

      if deck.count == 0
        puts "******** Game over! *********"
        puts "You had #{correct_turns.length} correct guesses out of #{@deck.count} for a total score of #{percent_correct}%."
        puts "#{card_one.category} - #{percent_correct_by_category(:Geography)}"
        puts "#{card_two.category} - #{percent_correct_by_category(:STEM)}"
      end
    end
  end

  def take_turn(guess)
    @current_card = @deck.cards.shift

    new_turn = Turn.new(guess, @current_card)

    @turns << new_turn

    if new_turn.correct?
      @correct_turns << new_turn #&&start new turn?
    else
      @wrong_turns << new_turn #&& start new turn? how do i start a new turn
    end

    new_turn
  end

  def number_correct
    @correct_turns.count
  end

  def number_correct_by_category(category)
    @turns.find_all do |turn|
      turn.correct? && turn.card.category == category
    end.count
  end

  def percent_correct
    ((@correct_turns.count)/(@turns.count.to_f)) * 100
  end

  def percent_correct_by_category(category)
    @turns.each do |turn|
      if turn.correct? && turn.card.category == category
        @correct_category << @turn
      end
    end
    ((@correct_category.count)/(@turns.count.to_f)) * 100
  end
end
