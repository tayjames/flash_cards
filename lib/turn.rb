class Turn
  attr_reader :guess, :card

  def initialize(string, card)
   @guess = string
   @card = card
  end

  def correct?
   @guess == @card.answer
  end

  def feedback
      if @guess == @card.answer
         "Correct!"
      else
         "Incorrect."
      end
  end
end
#does my code need to be more organized
