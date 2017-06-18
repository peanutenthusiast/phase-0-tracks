module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
    words + "!!!1" + " :D"
  end 
end

p Shout.yell_angrily("All of my teeth hurt.")

p Shout.yelling_happily("I've defeated capitalism.")

