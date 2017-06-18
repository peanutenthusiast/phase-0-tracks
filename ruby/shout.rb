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
harris_pelton = Rich_bb.new
money_bae_bae = White_G.new

p rich_bb.yell_hangrily("my father ordered the foie gras burrito without beans!")

p white_g.yell_hangrily("where's my starbucks?")

p harris_pelton.yell_hangrily("That's too hot")

p money_bae_bae.yell_hangrily("This has gluten?")
p Math.log(5)
