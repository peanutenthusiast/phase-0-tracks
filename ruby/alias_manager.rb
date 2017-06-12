#takes spy's first and last name, 
#switch the first and last name 
#Rejoin the new name as a string ("Gaga Lady")
#Define the switched name as a new variable
#Define another variable as the switched name split into an array
#call this variable as an argument for the alias method

#Alias Method
#alias = switcheroo.map do |l|
#iterate through the last name first name array with .map
#convert all characters to lowercase with .downcase
#if the character is a space, leave it as a space
#if the character is a vowel, change it to the next vowel
#if the character is a consonant, change it to the next consonant over
#join together the array
#use .capitalize to properly capitalize the name
#print the new alias

def converter(orig_name)
  step1 = orig_name.split(' ')
  step1[0], step1[1] = step1[1], step1[0]
  lastFirst = step1.join(' ').split('')
  idx = 0
  vowel = "aeiou"
  consonant = "bcdfghnpqrstvwxyz"
  i = 0
  while i <= lastFirst.length
    alias1 = lastFirst.map do |l|
      vowel = "aeiou"
      consonant = "bcdfghjklmnpqrstvwxyz"
      l.downcase!
      if l == "z"
        l = "b"
      elsif l == "u"
        l = "a"
      elsif l == " "
        l = " "
      elsif 
        v = vowel.index(l)
        l = vowel[v + 1]
      elsif
        c = consonant.index(l)
        l = consonant[c + 1]
      end
    end
    i += 1 
  end 
  finalAlias = alias1.join('').split(' ').map! {|l| l.capitalize}.join(' ')
end 

confInfo = {}
orig_name = ""
finalAlias = ""

loop do
  p "Greetings, perfectly normal individual. What's your name?"
  orig_name = gets.chomp
  
  finalAlias = converter(orig_name)
  confInfo[orig_name] = finalAlias

  p "Have a perfectly normal day, #{finalAlias}. Can I help you with anything else?"
  help = gets.chomp
  break if help == "quit"
end

confInfo.each do |o, f|
  puts "#{o} is definitely not a spy, but if they had a spy name, it is #{f}."
end 



