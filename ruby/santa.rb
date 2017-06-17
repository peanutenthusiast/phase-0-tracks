class Santa
  attr_reader :reindeer_ranking,  :ethnicity, :age 
  attr_accessor :gender

  def speak
    puts "#{@ethnicity.to_s.capitalize} Santa says, 'Ho, ho, ho! Haaaappy holidays!'"
  end

  def eat_milk_and_cookies(cookie_kind)
    puts "#{@gender.to_s.capitalize} Santa says, 'That was a good #{cookie_kind}!'"
  end 

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def celebrate_age(a)
    @age = @age + (1 * a)
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.insert(-1, @reindeer_ranking.delete(reindeer_name)).compact!
    p "Reindeer Ranking (by yours truly)"
    p "++++++++++++++++"
    @reindeer_ranking.each do |name|
      p name
    end
  end

  # #getter
  # def age
  #   @age
  # end

  # def ethnicity
  #   @ethnicity
  # end

  # def gender
  #   @gender 
  # end

  # #setter

  # def gender=(new_gender)
  #   @gender = new_gender
  # end
end

santa = Santa.new("Haitian", "Buttercup")

santa.get_mad_at("Rudolph")

santa.celebrate_age(87)

santa.gender = "Vaporbabe9999"

p "#{santa.gender} Santa doesn't look too bad for #{santa.age} years old."

santas = []
nonsensical_genders = ["toad", "cup", "flagella", "exuberant", "fortitude", "interstitial", "vaporbabe"]
nonsensical_ethnicities = ["grotundean", "fluctilian", "genovian", "martian", "plutonian", "aerolian"]
nonsensical_genders.length.times do |i|
  santas << Santa.new(nonsensical_genders[i], nonsensical_ethnicities[i])
end


santas.each do |santa|
  santa.speak
  p "~~~~~~~~"
end

santas.each do |santa|
  santa.eat_milk_and_cookies("sushi")
end






