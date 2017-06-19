class Game
  attr_reader :tries, :letter
  attr_accessor :word, :win, :guess
  def initialize(word)
    @word = word
    @win = false
    @tries = 0
    @guess = guess
    @letter = @word.chars
  end

  def check_print(guess, letter)
    @win = true

    @letter.map! do |l|
      if guess.include?(l)
        l
      else
        '_'
      end
    end

    return win
  end

end