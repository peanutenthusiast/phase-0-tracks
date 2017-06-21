class Game
  attr_reader :letter, :max_tries
  attr_accessor :word, :win, :guess, :tries
  def initialize(word)
    @word = word
    @win = false
    @tries = 0
    @guess = []
    @letter = @word.chars.to_a
    @max_tries = (@letter.length * 2)
  end

  def check_print(guess, letter)
    @win = true
    @letter.each do |l|
      if @guess.include?(l)
        print l
      else
        print  '_ '
        @win = false
      end
    end

    return @win
  end

end

puts "Win this game, and Player 1 will present Player 2 a boon. Player 1, enter a word."
p1_word = gets.chomp
round_1 = Game.new(p1_word)

while round_1.tries <= round_1.max_tries do
  puts "Player 2, enter a letter."
  input = gets.chomp
  if round_1.guess.include?(input)
    puts "Already used."
  else
    if round_1.letter.include?(input)
      puts "Congrats, you got a letter or something."
      round_1.guess << input
      round_1.win = round_1.check_print(round_1.guess, round_1.letter)
        if round_1.win
          puts "====="
          puts "Congrats. Player 1 will now offer you the boon of unlimited booty."
          break
        end
    else 
      puts "Lol, no, that's not it."
      puts "You have " + ((round_1.letter.length * 2) - round_1.tries).to_s + " more tries."
      if !round_1.win
        puts "Lol sucks to suck byeeeeee."
      end
    end
    round_1.tries += 1
  end
end

#Preset the secret word to ‘bad.’
#To the user: “Guess the secret word, and I will present you with a boon. Because the secret word is 3 words, you have 3 total guesses. Let’s start”
#success
#inputs a
#outputs _ a _
#inputs b
#outputs b a _ 
#inputs d
#outputs b a d
#Congratulations. Your boon is a feeling of completion.
#failure
#inputs a
#outputs _ a _
#inputs b
#outputs b a _
#inputs t
#lol sucks to suck bye”

