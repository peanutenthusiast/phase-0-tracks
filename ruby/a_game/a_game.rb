
# game class

class Game
  attr_reader :guess_count, :is_over, :letters, :attempt
  attr_accessor :word, :guess

  def initialize(word)
    @guess_count = 0
    @is_over = false
    @word = ""
    @letters = @word.split(//)
    @guess = ""
    @attempt = 0
  end

end

# class CupGame
#   attr_reader :guess_count
#   #makes guess_count readable
#   attr_reader :is_over
#   #makes is_over readable
  
#   def initialize
#     @cups = ["ball", "empty", "empty"]
#     #sets cups as array; this array will be meddled and played with 
#     @guess_count = 0
#     #the initial guess count is 0 
#     @is_over = false
#     #it's not over!
#   end
  
#   def shuffle
#     @cups.shuffle!
#     #reorders the array randomly
#   end
  
#   def check_cup(index)
#     #defines a method check_cup to be used outside the class, index will be called
#     @guess_count += 1
#     #adds one to the guess count
#     if @cups[index] == "ball"
#       #if the index or position in the array is equal to the ball
#       @is_over = true
#       #it's now over. the game is finished.
#     else
#       false
#       #the game is not over.
#     end
#   end
# end

# # user interface

# puts "Welcome to the Cup Game!"
# game = CupGame.new
# #starts a new instance of the class CupGame

# puts "Shuffling cups ..."
# game.shuffle
# #shuffles the order of the array using .shuffle!


# while !game.is_over
# #while is_over is not false (true???)
#   puts "Which cup has the ball? Enter a guess of 1, 2, or 3:"
#   guess = gets.chomp.to_i
#   #defines guess, which is converted to an integer
#   if !game.check_cup(guess - 1)
#     #passes the user's integer through the method .check_up, -1 is because 1 should be 0, 2 should 1, etc. when referring to an array's index
#     #! because when .check_up does not equal ball
#     #if the method does not equal ball
#     puts "Nope! Try again."
#   end
# end

# puts "You won in #{game.guess_count} guesses!"
