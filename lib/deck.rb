require 'pry'
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
    @cards.each |cards|
    if card.category == category
      matches_category << card
    end
  end
  end
