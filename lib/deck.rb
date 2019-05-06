require 'pry'
require './lib/card'
require './lib/turn'

class Deck
  attr_reader :cards

  def initialize(cards) #card is an array that has question/answer/category
    @cards = cards
  end

  def count
    @cards.count
  end

  def cards_in_category(category) #I think I need to create an empty array to store matching categories
    matches_category = []
    cards.each do |card|
      if card.category == category #see if there is an enumerable to shorten this up
        matches_category << card
      end
    end
    matches_category
  end
end
