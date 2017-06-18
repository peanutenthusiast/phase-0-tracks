module Shout
  # def self.yell_angrily(words)
  #   words + "!!!" + " :("
  # end

  # def self.yelling_happily(words)
  #   words + "!!!1" + " :D"
  # end 
  def yell_hangrily(words)
    words.upcase + "!!!!!" + ">:C"
  end
end

class White_G
  include Shout
end

class Rich_bb
  include Shout
end

rich_bb = Rich_bb.new 
white_g = White_G.new

p rich_bb.yell_hangrily("my father ordered the foie gras burrito without beans!")

p white_g.yell_hangrily("where's my starbucks?")

p Math.log(5)
